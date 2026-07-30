# Daily Analytics Practice

Daily SQL and Excel practice log — part of a structured 90-day path into data analytics and Big 4 consulting roles.

![SQL](https://img.shields.io/badge/SQL-MySQL-blue) ![Excel](https://img.shields.io/badge/Excel-Practice-green) ![Status](https://img.shields.io/badge/status-active-brightgreen) 

[Progress Log](#progress-log) · [Why This Repo Exists](#why-this-repo-exists) · [How Its Organized](#how-its-organized)

---

## Why This Repo Exists

Reading about SQL and Excel doesn't build fluency — solving problems daily does. This repo is a public, timestamped log of that practice: one problem a day, minimum, with the query/solution and a short note on the concept it tests.

It exists for two reasons:
1. **Forcing function** — a public daily log is harder to skip than a private one.
2. **Evidence** — for interviews, this is a running record of consistent, hands-on skill-building rather than a claim on a resume.

## How It's Organized

daily-analytics-practice/
├── README.md          this file — daily log + progress tracker
├── SQL/                one .sql file per problem solved
└── EXCEL/              one .xlsx file per exercise completed

Each SQL file follows the same format:

    -- Day N: Problem Name
    -- Platform: LeetCode #XXX
    -- Approach: one-line explanation of the technique used

    SELECT ...

### SQL

| Problem | Platform | Difficulty | Concept | Solution |
|---------|----------|------------|---------|----------|
| Combine Two Tables (#175) | LeetCode | Easy | LEFT JOIN | [view](SQL/combine_two_tables.sql) |
| Employees Earning More Than Their Managers (#181) | LeetCode | Easy | Self JOIN | [view](SQL/employees_earning_more_than_managers.sql) |
| Second Highest Salary (#176) | LeetCode | Medium | Subquery + OFFSET/LIMIT | [view](SQL/second_highest_salary.sql) |
| Nth Highest Salary (#177) | LeetCode | Medium | Function + Subquery + OFFSET/LIMIT | [view](SQL/nth_highest_salary.sql) |
| Rank Scores (#178) | LeetCode | Medium | Window functions (DENSE_RANK) | [view](SQL/178-rank-scores.sql) |
| Consecutive Numbers (#180) | LeetCode | Medium | Self-join on sequential IDs | [view](SQL/180-consecutive-numbers.sql) |
| Department Highest Salary (#184) | LeetCode | Medium | Correlated subquery / window functions | [view](SQL/184-department-highest-salary.sql) |
| Managers with at Least 5 Direct Reports (#570) | LeetCode | Medium | GROUP BY + HAVING, self-referencing table | [view](SQL/570-managers-with-at-least-5-direct-reports.sql) |
| Investments in 2016 (#585) | LeetCode | Medium | Multiple filtering subqueries | [view](SQL/585-investments-in-2016.sql) |
| Game Play Analysis IV (#550) | LeetCode | Medium | Self Join, Date Functions | [view](SQL/game_play_analysis_iv.sql) |
| Friend Request II: Who Has the Most Friends (#602) | LeetCode | Medium | UNION, Aggregation | [view](SQL/friend_request_ii.sql) |
| Tree Node (#608) | LeetCode | Medium | Self Reference, CASE | [view](SQL/tree_node.sql) |
| Exchange Seats (#626) | LeetCode | Medium | CASE, Conditional Logic | [view](SQL/exchange_seats.sql) |
| Department Top Three Salaries (#185) | LeetCode | Hard | Window Functions, DENSE_RANK | [view](SQL/department_top_three_salaries.sql) |
| Trips and Users (#262) | LeetCode | Hard | Joins, Conditional Aggregation | [view](SQL/trips_and_users.sql) |
| Human Traffic of Stadium (#601) | LeetCode | Hard | Gaps & Islands, Window Functions | [view](SQL/human_traffic_of_stadium.sql) |
| First Letter Capitalization II (#3374) | LeetCode | Hard | String Manipulation, Recursive CTE | [view](SQL/first_letter_capitalization_ii.sql) |
| Find Invalid IP Addresses (#3451) | LeetCode | Hard | String Manipulation, Regex | [view](SQL/find_invalid_ip_addresses.sql) |
| Find Students Who Improved (#3421) | LeetCode | Medium | Window Functions (ROW_NUMBER), Self-Join | [view](SQL/find-students-who-improved.sql) |
| DNA Pattern Recognition (#3475) | LeetCode | Medium | REGEXP, String Pattern Matching | [view](SQL/dna-pattern-recognition.sql) |
| Analyze Organization Hierarchy (#3482) | LeetCode | Hard | Recursive CTE, Hierarchical Aggregation | [view](SQL/analyze-organization-hierarchy.sql) |
| Analyze Subscription Conversion (#3497) | LeetCode | Medium | Conditional Aggregation (CASE + AVG), HAVING | [view](SQL/analyze-subscription-conversion.sql) |
| Find Product Recommendation Pairs (#3521) | LeetCode | Medium | Self-Join, GROUP BY + HAVING | [view](SQL/find-product-recommendation-pairs.sql) |
| Product Sales Analysis III (#1070) | LeetCode | Medium | Tuple Subquery, Aggregation | [view](SQL/product-analysis-iii.sql) |
| Market Analysis I (#1158) | LeetCode | Medium | LEFT JOIN, Conditional ON | [view](SQL/market-analysis-i.sql) |
| Product Price at a Given Date (#1164) | LeetCode | Medium | UNION, Tuple Subquery | [view](SQL/product-price-at-a-given-date.sql) |
| Immediate Food Delivery II (#1174) | LeetCode | Medium | Tuple Subquery, Boolean SUM | [view](SQL/immediate-food-delivery-ii.sql) |
| Monthly Transactions I (#1193) | LeetCode | Medium | Conditional Aggregation, DATE_FORMAT | [view](SQL/monthly-transactions-i.sql) |
| Customers Who Bought All Products (#1045) | LeetCode | Medium | GROUP BY, HAVING, Subquery | [view](SQL/1045-customers-who-bought-all-products.sql) |
| Last Person to Fit in the Bus (#1204) | LeetCode | Medium | Window Functions, Running Total | [view](SQL/1204-last-person-to-fit-in-the-bus.sql) |
| Restaurant Growth (#1321) | LeetCode | Medium | Window Functions, Range Frames, Moving Average | [view](SQL/1321-restaurant-growth.sql) |
| Movie Rating (#1341) | LeetCode | Medium | JOIN, GROUP BY, UNION ALL | [view](SQL/1341-movie-rating.sql) |
| Capital Gain/Loss (#1393) | LeetCode | Medium | CASE WHEN, GROUP BY, Aggregation | [view](SQL/1393-capital-gainloss.sql) |
| Count Salary Categories (#1907) | LeetCode | Medium | Conditional Aggregation, UNION ALL | [view](SQL/count-salary-categories.sql) |
| Confirmation Rate (#1934) | LeetCode | Medium | LEFT JOIN, Conditional Aggregation, ROUND | [view](SQL/confirmation-rate.sql) |
| Odd and Even Transactions (#3220) | LeetCode | Easy | Conditional Aggregation, GROUP BY | [view](SQL/odd-and-even-transactions.sql) |
| Seasonal Sales Analysis (#3564) | LeetCode | Medium | CTE, Window Functions (RANK), JOIN | [view](SQL/seasonal-sales-analysis.sql) |
| Maximize Active Section with Trade I (#3499) | LeetCode | Medium | Run-Length Encoding, Greedy | [view](SQL/maximize-active-section-with-trade-i.sql) |
| Find Category Recommendation Pairs (#3554) | LeetCode | Hard | Self-Join, HAVING, Aggregation | [view](SQL/Find_Category_Recommendation_Pairs.sql) |
| Find Zombie Sessions (#3673) | LeetCode | Hard | GROUP BY, HAVING, Conditional Aggregation, TIMESTAMPDIFF | [view](SQL/find_zombie_sessions.sql) |
| Most Common Course Pairs (#3764) | LeetCode | Hard | Window Functions, Self-Join, GROUP BY | [view](SQL/Most_Common_Course_Pairs.sql) |
| Find Users with Persistent Behavior Patterns (#3832) | LeetCode | Hard | Window Functions, Gaps and Islands | [view](SQL/find_users_with_persistent_behaviour_pattern.sql) |
| Find Consistently Improving Employees (#3580) | LeetCode | Medium | Window Functions, LAG, ROW_NUMBER | [view](SQL/find_consistently_improving_employees.sql) |
| Find COVID Recovery Patients (#3586) | LeetCode | Medium | CTE, Self-Join, Conditional Aggregation | [view](SQL/find_covid_recovered_patients.sql) |
| Find Drivers with Improved Fuel Efficiency (#3601) | LeetCode | Medium | CTE, Self-Join, CASE WHEN | [view](SQL/Find_Drivers_with_Improved_Fuel_Efficiency.sql) |
| Find Overbooked Employees (#3611) | LeetCode | Medium | CTE, GROUP BY, HAVING, WEEK() | [view](SQL/Find_Overbooked_Employees.sql) |
| Find Stores with Inventory Imbalance (#3626) | LeetCode | Medium | Window Functions (RANK), Self-Join | [view](SQL/Find_Stores_with_Inventory_Imbalance.sql) |
| Find Books with Polarized Opinions (#3642) | LeetCode | Medium | Aggregation, HAVING, CASE WHEN | [view](SQL/find_books_with_polarized_opininons.sql) |
| Find Loyal Customers (#3657) | LeetCode | Medium | Aggregation, DATEDIFF, HAVING | [view](SQL/find_loyal_customers.sql) |
| Find Golden Hour Customers (#3705) | LeetCode | Medium | CASE WHEN, HOUR(), Aggregation | [view](SQL/find_golden_hour_customers.sql) |
| Find Churn Risk Customers (#3716) | LeetCode | Medium | Window Functions, CTEs, DATEDIFF | [view](SQL/find_churn_risk_customers.sql) |
| Find Emotionally Consistent Users (#3808) | LeetCode | Medium | CTEs, Aggregation, Self-Join | [view](SQL/find_emotionally_consistent_users.sql) |
| Triangle Judgement (#610) | LeetCode | Easy | CASE WHEN, Conditional Logic | [view](SQL/triangle_judgement.sql) |
| Biggest Single Number (#619) | LeetCode | Easy | GROUP BY, HAVING, Aggregation | [view](SQL/biggest_single_number.sql) |
| Not Boring Movies (#620) | LeetCode | Easy | WHERE, Modulo, ORDER BY | [view](SQL/not_boring_movies.sql) |
| Swap Sex of Employees (#627) | LeetCode | Easy | UPDATE, CASE WHEN | [view](SQL/swap_sex_of_employees.sql) |
| Actors and Directors Who Cooperated At Least Three Times (#1050) | LeetCode | Easy | GROUP BY, HAVING | [view](SQL/Actors_and_Directors_Who_Cooperated_At_Least_Three_Times.sql) |
| Duplicate Emails (#182) | LeetCode | Easy | GROUP BY, HAVING | [view](SQL/duplicate_emails.sql) |
| Customers Who Never Order (#183) | LeetCode | Easy | LEFT JOIN, NOT IN / NOT EXISTS | [view](SQL/customers_who_never_order.sql) |
| Rising Temperature (#197) | LeetCode | Easy | Self-Join, DATEDIFF | [view](SQL/rising_temperature.sql) |
| Delete Duplicate Emails (#196) | LeetCode | Easy | DELETE, Self-Join | [view](SQL/delete_duplicate_emails.sql) |
| User Activity for the Past 30 Days (#1141) | LeetCode | Easy | Group By, Date Filtering, Distinct | [view](SQL/user_activity_for_past_30_days.sql) |
| Article Views I (#1148) | LeetCode | Easy | Self Join Logic, Distinct | [view](SQL/article_views_1.sql) |
| Reformat Department Table (#1179) | LeetCode | Easy | Pivot, CASE WHEN, Group By | [view](SQL/reformat_department_table.sql) |
| Queries Quality and Percentage (#1211) | LeetCode | Easy | Aggregation, Conditional Avg | [view](SQL/queries_quality_and_percentage.sql) |
| Average Selling Price (#1251) | LeetCode | Easy | Join, Weighted Average, Null Handling | [view](SQL/average_selling_price.sql) |
| Game Play Analysis I (#511) | LeetCode | Easy | GROUP BY, MIN | [view](SQL/game_play_analysis_1.sql) |
| Employee Bonus (#577) | LeetCode | Easy | LEFT JOIN, NULL Handling | [view](SQL/employee_bonus.sql) |
| Find Customer Referee (#584) | LeetCode | Easy | WHERE, NULL Handling | [view](SQL/find_customer_referee.sql) |
| Customer Placing the Largest Number of Orders (#586) | LeetCode | Easy | GROUP BY, ORDER BY, LIMIT | [view](SQL/customer_placing_the_largest_number_of_orders.sql) |
| Big Countries (#595) | LeetCode | Easy | WHERE, OR | [view](SQL/big_countries.sql) |
| Classes With at Least 5 Students (#596) | LeetCode | Easy | GROUP BY, HAVING | [view](SQL/classes_with_at_least_5_students.sql) |

### Excel

Topic | File |
-------|------|
 Sum practice | [view](EXCEL/Sum-Practice-1.xlsx) |
 Basic formulas | [view](EXCEL/basic%20formulas.xlsx) |
 Basic formulas (2) | [view](EXCEL/basic%202.xlsx) |
 Logical functions | [view](EXCEL/logical%20functions.xlsx) |
 Maths functions | [view](EXCEL/maths%20functions.xlsx) |
 Vlookup Exact match | [view](EXCEL/01_vlookup_exact_match.xlsx) |
 Vlookup appropriate match | [view](EXCEL/02_vlookup_approx_tax_bracket.xlsx) |
 Hlookup budget | [view](EXCEL/03_hlookup_monthly_budget.xlsx) |
 Index Match single condition | [view](EXCEL/INDEX_MATCH_Single_Condition.xlsx) |
 INDEX-MATCH (two-way lookup, row + column) | [view](EXCEL/INDEX_MATCH_Two_Way_Lookup.xlsx) |
 XLOOKUP with default/error handling | [view](EXCEL/XLOOKUP_Default_Error_Handling.xlsx) |
 Nested IF (3+ conditions) | [view](EXCEL/nestef_if_solved.csv) |
 IFS function | [view](EXCEL/ifs_function_solved.csv) |
 SUMIF | [view](sumif_solved.csv) |



## Concepts Covered

**SQL**
- [x] SELECT / WHERE
- [x] LEFT JOIN
- [x] Self JOIN
- [x] Subqueries
- [x] GROUP BY / HAVING
- [x] Window functions
- [x] CTEs

**Excel**
- [x] Basic formulas
- [x] SUM
- [x] Logical functions (IF, AND, OR)
- [x] Math functions
- [ ] VLOOKUP / XLOOKUP
- [ ] Pivot tables
- [ ] INDEX-MATCH

---

Part of a broader skill-building track that also includes the [BRSR Gap Analysis Tool](https://github.com/karan02566-prog/BRSR-gap-analysis-tool), a Python/Streamlit ESG compliance screening tool.
