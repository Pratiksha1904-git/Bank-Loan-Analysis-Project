<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>Bank Loan Analysis Dashboard</title>
</head>
<body>

<h1>🏦 Bank Loan Analysis Dashboard</h1>

<h3>📊 Project Overview</h3>
<p>
  The <strong>Bank Loan Analysis Dashboard</strong> project analyzes loan data to monitor the bank’s lending performance using <strong>Power BI</strong>, <strong>Excel</strong>, <strong>Tableau</strong>, <strong>SQL</strong>, and <strong>Python</strong>.
  The goal is to track key KPIs, identify good vs. bad loans, and understand lending trends to support <em>data-driven decisions</em>.
</p>

<hr/>

<h3>🎯 Objectives</h3>
<ul>
  <li>Track <strong>Total Loan Applications</strong>, <strong>Total Funded Amount</strong>, and <strong>Total Amount Received</strong></li>
  <li>Compare <strong>Month-to-Date (MTD)</strong> and <strong>Month-over-Month (MoM)</strong> performance</li>
  <li>Classify and analyze <strong>Good Loans vs Bad Loans</strong></li>
  <li>Build interactive dashboards across Power BI, Excel, and Tableau</li>
  <li>Visualize borrower behavior and regional loan trends</li>
</ul>

<hr/>

<h3>🧮 Key KPIs</h3>
<table>
  <thead>
    <tr>
      <th>Category</th>
      <th>KPI</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Loan Volume</td>
      <td><strong>Total Loan Applications</strong></td>
      <td>Total number of applications received</td>
    </tr>
    <tr>
      <td>Funding</td>
      <td><strong>Total Funded Amount</strong></td>
      <td>Total disbursed loan value</td>
    </tr>
    <tr>
      <td>Repayment</td>
      <td><strong>Total Amount Received</strong></td>
      <td>Total repayments collected</td>
    </tr>
    <tr>
      <td>Interest</td>
      <td><strong>Average Interest Rate</strong></td>
      <td>Average lending rate across all loans</td>
    </tr>
    <tr>
      <td>Borrower Health</td>
      <td><strong>Average DTI (Debt-to-Income)</strong></td>
      <td>Borrower financial stability indicator</td>
    </tr>
  </tbody>
</table>

<hr/>

<h3>✅ Good Loan vs Bad Loan KPIs</h3>
<p><strong>Good Loans:</strong> <em>Fully Paid</em> or <em>Current</em><br/>
<strong>Bad Loans:</strong> <em>Charged Off</em></p>

<table>
  <thead>
    <tr><th>Type</th><th>KPI</th><th>Description</th></tr>
  </thead>
  <tbody>
    <tr><td>Good Loan</td><td>Good Loan %</td><td>Percentage of good loans out of total applications</td></tr>
    <tr><td>Good Loan</td><td>Good Loan Funded Amount</td><td>Total amount funded under good loans</td></tr>
    <tr><td>Bad Loan</td><td>Bad Loan %</td><td>Percentage of bad loans out of total applications</td></tr>
    <tr><td>Bad Loan</td><td>Bad Loan Funded Amount</td><td>Total amount funded under bad loans</td></tr>
  </tbody>
</table>

<hr/>

<h3>📈 Dashboards Created</h3>

<h4>🟢 Dashboard 1: Summary</h4>
<ul>
  <li>Displays overall KPIs (applications, funded amount, received amount)</li>
  <li>MTD and MoM performance tracking</li>
  <li>Good vs Bad Loan segmentation</li>
</ul>

<h4>🟡 Dashboard 2: Overview</h4>
<ul>
  <li><strong>Line Chart:</strong> Monthly trends of Applications, Funded Amount, Amount Received</li>
  <li><strong>Map:</strong> State-wise lending distribution</li>
  <li><strong>Donut Chart:</strong> Loan Term Analysis</li>
  <li><strong>Bar Charts:</strong> Employee Length & Loan Purpose</li>
  <li><strong>Tree Map:</strong> Home Ownership Impact</li>
</ul>

<h4>🔵 Dashboard 3: Details</h4>
<ul>
  <li>Comprehensive data table for all loan details</li>
  <li>Borrower and loan performance view</li>
</ul>

<hr/>

<h3>💻 Tools &amp; Technologies</h3>
<table>
  <thead><tr><th>Tool</th><th>Purpose</th></tr></thead>
  <tbody>
    <tr><td><strong>SQL</strong></td><td>Data extraction, aggregation, and transformation</td></tr>
    <tr><td><strong>Python</strong> (Pandas, NumPy, Matplotlib, Seaborn)</td><td>Data cleaning, EDA, and visualization</td></tr>
    <tr><td><strong>Power BI / Tableau / Excel</strong></td><td>Dashboard creation and KPI visualization</td></tr>
    <tr><td><strong>GitHub</strong></td><td>Project documentation and version control</td></tr>
  </tbody>
</table>

<hr/>

<h3>⚙️ Workflow</h3>
<ol>
  <li><strong>Data Collection:</strong> Import raw dataset into SQL and Python</li>
  <li><strong>Data Cleaning:</strong> Handle nulls, duplicates, and missing values</li>
  <li><strong>Exploratory Data Analysis:</strong> Use Python for trend discovery</li>
  <li><strong>SQL Queries:</strong> Calculate key KPIs and group-level summaries</li>
  <li><strong>Visualization:</strong> Build dashboards using Power BI, Tableau, and Excel</li>
  <li><strong>Insight Generation:</strong> Identify good vs bad loans, trends, and performance</li>
</ol>

<hr/>

<h3>🖼️ Dashboard Previews</h3>

<h4>🔹 Power BI Dashboards</h4>
<p><strong>Summary</strong><br/>
<img src="./07_Images/PowerBI_Summary.png" alt="Power BI Summary" style="max-width:800px;"></p>

<p><strong>Overview</strong><br/>
<img src="./07_Images/PowerBI_Overview.png" alt="Power BI Overview" style="max-width:800px;"></p>

<p><strong>Details</strong><br/>
<img src="./07_Images/PowerBI_Details.png" alt="Power BI Details" style="max-width:800px;"></p>

<hr/>

<h4>🔹 Excel Dashboards</h4>
<p><strong>Summary</strong><br/>
<img src="./07_Images/Excel_Summary.png" alt="Excel Summary" style="max-width:800px;"></p>

<p><strong>Overview</strong><br/>
<img src="./07_Images/Excel_Overview.png" alt="Excel Overview" style="max-width:800px;"></p>

<p><strong>Details</strong><br/>
<img src="./07_Images/Excel_Details.png" alt="Excel Details" style="max-width:800px;"></p>

<hr/>

<h4>🔹 Tableau Dashboards</h4>
<p><strong>Summary</strong><br/>
<img src="./07_Images/Tableau_Summary.png" alt="Tableau Summary" style="max-width:800px;"></p>

<p><strong>Overview</strong><br/>
<img src="./07_Images/Tableau_Overview.png" alt="Tableau Overview" style="max-width:800px;"></p>

<p><strong>Details</strong><br/>
<img src="./07_Images/Tableau_Details.png" alt="Tableau Details" style="max-width:800px;"></p>

<hr/>

<h3>💡 Insights Gained</h3>
<ul>
  <li>Majority of loans are <strong>Good Loans</strong>, indicating solid repayment performance.</li>
  <li><strong>36-month loans</strong> are more common than longer terms.</li>
  <li><strong>Debt Consolidation</strong> is the most frequent loan purpose.</li>
  <li>States with higher loan applications often show higher funded amounts.</li>
  <li>Borrowers with <strong>higher DTI ratios</strong> are more likely to default.</li>
</ul>

<hr/>

<h3>📘 Problem Statement (Summarized)</h3>
<p>
  The objective is to create a <strong>comprehensive bank loan report</strong> to track key metrics and identify trends in lending activity.
  The dashboards provide visibility into loan performance, helping stakeholders make informed financial decisions.
</p>
<p><em>(Inspired by the “Data Tutorials” YouTube channel — all analysis, SQL, Python, and dashboards were independently created.)</em></p>

<hr/>

<h3>📂 Repository Structure</h3>
<pre>
Bank-Loan-Analysis/
├── 01_Data/
├── 02_SQL/
├── 03_Python/
├── 04_PowerBI/
├── 05_Excel/
├── 06_Tableau/
├── 07_Images/
└── 08_Documentation/
</pre>

<hr/>

<h3>👩‍💻 Author</h3>
<p><strong>Sami – Data Analyst</strong><br/>
📧 <a href="mailto:your.email@example.com">your.email@example.com</a><br/>
🔗 <a href="https://www.linkedin.com/in/your-linkedin">LinkedIn Profile</a>
</p>

<hr/>

<h3>⭐ Acknowledgement</h3>
<p>Dataset and project concept inspired by <strong>Data Tutorials (YouTube)</strong>. All analysis, queries, and dashboards are created independently for learning and portfolio purposes.</p>

</body>
</html>
