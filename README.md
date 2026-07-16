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
| Investments in 2016 (#585) | LeetCode | Medium | Multiple filtering subqueries | [view](SQL/585-investments-in-2016.sql)
| Game Play Analysis IV (#550) | LeetCode | Medium | Self Join, Date Functions | [view](SQL/game_play_analysis_iv.sql) |
| Friend Request II: Who Has the Most Friends (#602) | LeetCode | Medium | UNION, Aggregation | [view](SQL/friend_request_ii.sql) |
| Tree Node (#608) | LeetCode | Medium | Self Reference, CASE | [view](SQL/tree_node.sql) |
| Exchange Seats (#626) | LeetCode | Medium | CASE, Conditional Logic | [view](SQL/exchange_seats.sql) |
| Department Top Three Salaries (#185) | LeetCode | Hard | Window Functions, DENSE_RANK | [view](SQL/department_top_three_salaries.sql) |
| Trips and Users (#262) | LeetCode | Hard | Joins, Conditional Aggregation | [view](SQL/trips_and_users.sql) |
| Human Traffic of Stadium (#601) | LeetCode | Hard | Gaps & Islands, Window Functions | [view](SQL/human_traffic_of_stadium.sql) |
| First Letter Capitalization II (#3374) | LeetCode | Hard | String Manipulation, Recursive CTE | [view](SQL/first_letter_captialization_ii.sql) |
| Find Invalid IP Addresses (#3451) | LeetCode | Hard | String Manipulation, Regex | [view](SQL/find_invaild_ip_addresses.sql) |


### Excel

Topic | File |
-------|------|
 Sum practice | [view](EXCEL/Sum-Practice-1.xlsx) |
 Basic formulas | [view](EXCEL/basic%20formulas.xlsx) |
 Basic formulas (2) | [view](EXCEL/basic%202.xlsx) |
 Logical functions | [view](EXCEL/logical%20functions.xlsx) |
 Maths functions | [view](EXCEL/maths%20functions.xlsx) |

## Concepts Covered

**SQL**
- [x] SELECT / WHERE
- [x] LEFT JOIN
- [x] Self JOIN
- [x] Subqueries
- [ ] GROUP BY / HAVING
- [ ] Window functions
- [ ] CTEs

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
