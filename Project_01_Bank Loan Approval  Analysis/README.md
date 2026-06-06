# Project 1 — Bank Loan Approval Analysis

## Business Problem
A bank wants to understand what factors influence
loan approval decisions to improve their lending
process and reduce rejection rates among eligible
applicants.

## Business Questions Answered
1. What is the overall loan approval rate?
2. Does credit history affect approval chances?
3. Which property area has highest approval rate?
4. Does education level influence loan decisions?
5. What is the average loan amount approved vs rejected?
6. Which loan size category gets approved most?

## Dataset
- Source: Kaggle — Loan Eligible Dataset
- Rows: 614 applications
- Columns: 13
- Key Column: Loan_Status (Y=Approved, N=Rejected)

## Tools Used
- SQL — data extraction and pattern analysis
- Excel — pivot tables and visualisation
- Power BI - 3 page report, DAX measures, drill through, bookmarks and slicers

## Key Findings

### Finding 1 — Overall Loan Approval Rate
Out of 614 total loan applications:
- 422 applications were APPROVED (68.73%)
- 192 applications were REJECTED (31.27%)
- The bank approves roughly 7 out of every 10 applications.

### Finding 2 — Credit History is the Strongest Factor
Credit history shows the most dramatic impact on approval:
- Good credit history (1): 79.58% approval rate
- Bad credit history (0): only 7.87% approval rate
- Applicants with bad credit history are 10x more likely
  to be rejected than approved.
- This is the single most important factor in loan decisions.


### Finding 3 — Semiurban Area Has Highest Approval Rate
Property area significantly affects approval chances:
- Semiurban: 179 approved vs 54 rejected = 76.8% approval rate
- Urban: 133 approved vs 69 rejected = 65.8% approval rate
- Rural: 110 approved vs 69 rejected = 61.5% approval rate
- Semiurban applicants have the highest chance of approval.
- Rural applicants face the toughest approval conditions.

### Finding 4 — Graduates Apply for Higher Loans
Education level reveals interesting income and loan patterns:
- Graduates approved: 340 applications, avg loan = 151.09,
  avg income = 5751.58
- Graduates rejected: 140 applications, avg loan = 161.39,
  avg income = 6114.51
- Non-graduates approved: 82 applications, avg loan = 116.16,
  avg income = 3860.26
- Interesting insight: Rejected graduates actually had HIGHER
  average income (6114) than approved graduates (5751).
  This suggests income alone does not guarantee approval —
  other factors like credit history matter more.

### Finding 5 — Income Alone Does Not Guarantee Approval
Surprisingly, rejected applicants had slightly HIGHER
average income than approved applicants:
- Rejected (N): avg applicant income = 5446.08,
  avg loan amount = 151.22
- Approved (Y): avg applicant income = 5384.07,
  avg loan amount = 144.29
- Key insight: Approved applicants actually requested
  SMALLER loan amounts on average (144 vs 151).
- Conclusion: Applying for a loan within your means
  improves approval chances more than having high income.

### Finding 6 — Medium Loans Have Highest Approval Count
Using CASE WHEN to segment loans by size reveals:
- Large loans (above 200): 160 approved vs 85 rejected
  → 65.3% approval rate, avg income = 6489
- Medium loans (100-200): 262 approved vs 107 rejected
  → 71% approval rate, avg income = 4709
- Medium loan category has both highest approval count
  AND higher approval rate than large loans.
- Higher income applicants take larger loans but face
  slightly more scrutiny and rejection.


## Business Recommendations

### Recommendation 1 — Credit History as Primary Filter
Since applicants with bad credit history have only 7.87%
approval rate, the bank should use credit history as the
first screening criterion. This saves processing time for
clearly ineligible applications.

### Recommendation 2 — Focus Marketing on Semiurban Areas
Semiurban areas show 76.8% approval rate — the highest of
all three areas. Bank should increase loan marketing and
outreach in semiurban regions for better conversion rates.

### Recommendation 3 — Income Alone is Not Enough
Data shows rejected applicants sometimes had higher incomes
than approved ones. Bank should communicate clearly that
credit history matters more than just income level.
This helps applicants improve creditworthiness before applying.

### Recommendation 4 — Rural Area Needs Attention
Rural areas have the lowest approval rate at 61.5%.
Bank should investigate whether rural applicants face
structural barriers or genuinely higher default risks.
Targeted rural loan products with different criteria
could improve financial inclusion.


## Files
- loan_analysis.sql — all SQL analysis queries
- loan_data.csv — dataset
- loan_analysis.xlsx — pivot tables and charts
- screenshots of Excel — all chart images
- screenshots of Power BI - dashboard screenshots

## Dashboard Screenshots
### Page 1 - Overview Dashboard
key metrics: 614 applications | 68.73% approval rate
### page 2 - Education Analysis
Graduate vs Not Graduate approval breakdown
### page 3 - Property Area Drill-Through
Detailed view per property area via drill-through

## Skills Demonstrated
- SQL: SELECT, GROUP BY, HAVING, ORDER BY, COUNT, AVG,
  ROUND, Subqueries, CASE WHEN, Window Functions
- Excel: Pivot Tables, PivotCharts, Data Analysis
- Power BI: DAX measures, Drill through, Bookmarks and Slicers.
- Analytics: Pattern recognition, Business recommendations,
  Data storytelling