CREATE TABLE financial_loan (
    id BIGINT PRIMARY KEY,
    address_state VARCHAR(10),
    application_type VARCHAR(20),
    emp_length VARCHAR(20),
    emp_title VARCHAR(255),
    grade CHAR(1),
    home_ownership VARCHAR(20),
    issue_date DATE,
    last_credit_pull_date DATE,
    last_payment_date DATE,
    loan_status VARCHAR(50),
    next_payment_date DATE,
    member_id BIGINT,
    purpose VARCHAR(100),
    sub_grade VARCHAR(5),
    term VARCHAR(20),
    verification_status VARCHAR(50),
    annual_income NUMERIC(15,2),
    dti NUMERIC(10,4),
    installment NUMERIC(10,2),
    int_rate NUMERIC(6,4),
    loan_amount INT,
    total_acc INT,
    total_payment NUMERIC(15,2)
);

COPY financial_loan
FROM 'D:/Excel ARC/financial_loan.csv'
DELIMITER ','
CSV HEADER;

select * from financial_loan;

-- Total loan applications
select count(id) as total_applications from financial_loan;

-- Month to date(MTD) loan applications
select count(id) as MTD_total_applications from financial_loan
where extract(month from issue_date) = 12;

--Previous month to date(PMTD) loan application
select count(id) as PMTD_total_applications  from financial_loan
where extract(month from issue_date) = 11;

--Total Funded Amount
select sum(loan_amount) as total_funded_amount from financial_loan;

--MTD Total funded amount
select sum(loan_amount) as MTD_total_funded_amount from financial_loan
where extract(month from issue_date) = 12 AND extract(year from issue_date) = 2021;

-- PMTD Total funded amount
select sum(loan_amount) as PMTD_total_funded_amount from financial_loan
where extract(month from issue_date) = 11 AND extract(year from issue_date) = 2021;

-- Total Amount received
select sum(total_payment) as total_amount_received from financial_loan;

--MTD Total amount received
select sum(total_payment) as MTD_total_amount_received from financial_loan
where extract(month from issue_date)=12 AND extract(year from issue_date)=2021;

--PMTD Total amount received
select sum(total_payment) as PMTD_total_amount_received from financial_loan
where extract(month from issue_date)=11 AND extract(year from issue_date)=2021;

--Average interest rate
select round(avg(int_rate),2) * 100 as avg_interest_rate from financial_loan;

-- MTD Avg interest rate
select round(avg(int_rate),4) * 100 as MTD_avg_interest_rate from financial_loan
where extract(month from issue_date)= 12 AND extract(year from issue_date) = 2021;

--PMTD Avg interest rate
select round(avg(int_rate),4) * 100 as PMTD_avg_interest_rate from financial_loan
where extract(month from issue_date)= 11 AND extract(year from issue_date) = 2021;

--Avg debt-to-income ratio(DTI)
select round(avg(dti),4) * 100 as avg_dti from financial_loan; 

-- MTD Avg debt-to-income ratio(DTI)
select round(avg(dti),4) * 100 as MTD_avg_dti from financial_loan
where extract(month from issue_date)= 12 AND extract(year from issue_date) = 2021;

--PMTD Avg debt-to-income ratio(DTI)
select round(avg(dti),4) * 100 as PMTD_avg_dti from financial_loan
where extract(month from issue_date)= 11 AND extract(year from issue_date) = 2021;

-- Dashboard 1 Summary
--Good loan KPIs
--Good Loan Application Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100) / 
	COUNT(id) AS Good_Loan_Percentage
FROM financial_loan;

--Good Loan Application
select count(id) as Good_loan_application from financial_loan
where loan_status = 'Current' OR loan_status = 'Fully Paid';

--Good Loan Funded Amount
select sum(loan_amount) as Good_Loan_Funded_Amount from financial_loan
where loan_status = 'Current' OR loan_status = 'Fully Paid';

--Good loan Amount received
select sum(total_payment) as Good_Loan_Funded_Amount from financial_loan
where loan_status = 'Current' OR loan_status = 'Fully Paid';

--Bad loan KPIs
--Bad loan Application Percentages
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM financial_loan;

--Bad Loan Application
SELECT COUNT(id) AS Bad_Loan_Applications FROM financial_loan
WHERE loan_status = 'Charged Off';

-- Bad loan funded amount 
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM financial_loan
WHERE loan_status = 'Charged Off';

--Bad loan amount received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM financial_loan
WHERE loan_status = 'Charged Off';

--Loan status grid view
select loan_status,
count(id) as LoanCount,
sum(total_payment) as total_amount_received,
sum(loan_amount) as total_funded_amount,
avg(int_rate * 100) as interest_rate,
avg(dti*100) as DTI
from financial_loan
group by loan_status;

select loan_status,
sum(total_payment) as MTD_total_amount_received,
sum(loan_amount) as MTD_total_funded_amount
from financial_loan
where extract (month from issue_date)=12
group by loan_status;

--Monthly trends by issue date
SELECT 
    EXTRACT(MONTH FROM issue_date) AS month_number,
    TO_CHAR(issue_date, 'Month') AS month_name,
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received
FROM financial_loan
GROUP BY EXTRACT(MONTH FROM issue_date), TO_CHAR(issue_date, 'Month')
ORDER BY month_number;

--Regional analysis by state
select 
address_state as state,
count(id) as total_loan_applications,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as total_amount_received
from financial_loan
group by state
order by state;

--Loan term analysis
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY term
ORDER BY term;

--Employee length analysis
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length;

-- Loan Purpose Breakdown
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose;

--Home Ownership Analysis
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership;



