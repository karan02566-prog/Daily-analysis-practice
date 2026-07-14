# Daily Analytics Practice

Daily SQL and Excel practice log — part of a structured 90-day path into data analytics and Big 4 consulting roles.

![SQL](https://img.shields.io/badge/SQL-MySQL-blue) ![Excel](https://img.shields.io/badge/Excel-Practice-green) ![Status](https://img.shields.io/badge/status-active-brightgreen) ![Streak](https://img.shields.io/badge/days_logged-3-orange)

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
| Nth highest salary  (#177) | LeetCode | Medium | Function + Subquery + OFFSET/LIMIT | [view](SQL/Nth highest salary.sql) |


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
