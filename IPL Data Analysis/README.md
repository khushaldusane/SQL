# IPL 2026 Ball-by-Ball Data Analysis using SQL

## Project Overview

This project analyzes the complete **IPL 2026 ball-by-ball dataset** containing approximately **17,000+ deliveries** using SQL.

The objective of this project was not just to write SQL queries, but to answer real cricket analytics questions similar to those faced by sports analysts, broadcasters, fantasy platforms, and team management.

Using SQL, I transformed raw match data into meaningful performance insights by calculating batting, bowling, venue, and team metrics.

---

## Business Problem

Modern cricket generates enormous amounts of ball-by-ball data. However, raw data alone does not help coaches, analysts, broadcasters, or franchise owners make informed decisions.

The goal of this project was to answer questions such as:

* batsmen score at the highest pace
* Most economical bowlers
* Players performing best under pressure
* Venues favor batting
* Teams maintaining the highest scoring rate

These insights can support:

* Team strategy
* Match preparation
* Opposition analysis
* Fantasy cricket research
* Broadcast statistics
* Performance evaluation

---

## Dataset

* **Source:** Kaggle
* **Tournament:** IPL 2026
* **Dataset Type:** Ball-by-Ball Match Data
* **Rows:** ~17,000+
* **Technology Used:** SQL

The dataset contains information such as:

* Match ID
* Venue
* Over
* Batter
* Bowler
* Runs Scored
* Extras
* Dismissals
* Batting Team
* Bowling Team
* Innings

---

## Business Questions Solved

### Batting Analysis

* Identified the fastest scoring batsmen using Strike Rate.
* Found batsmen with the highest number of boundaries.
* Calculated total boundary contribution for every batsman.
* Measured dependency on boundaries by calculating Boundary Percentage.
* Evaluated batsman performance during Powerplay overs.
* Analyzed batter vs bowler matchups including runs scored, strike rate, balls faced, and dismissals.

---

### Bowling Analysis

* Calculated economy rates of all bowlers.
* Identified bowlers with the lowest run concession.
* Found bowlers taking wickets most frequently.
* Calculated Bowling Strike Rate.
* Measured performance during Death Overs.
* Identified bowlers dismissing the highest number of unique batsmen.

---

### Team Analysis

* Calculated total runs scored by every team.
* Compared overall Run Rates across teams.
* Evaluated team scoring efficiency.

---

### Venue Analysis

* Calculated average innings score for every stadium.
* Compared venues to identify batting-friendly grounds.

---

## SQL Concepts Used

This project demonstrates practical use of SQL concepts including:

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* Aggregate Functions
* CASE WHEN
* COUNT()
* SUM()
* AVG()
* ROUND()
* DISTINCT
* Nested Queries (Subqueries)
* Mathematical Calculations
* Business Metric Calculations

---

## Key Metrics Calculated

* Strike Rate
* Economy Rate
* Bowling Strike Rate
* Run Rate
* Boundary Percentage
* Boundary Runs
* Average Innings Score
* Powerplay Runs
* Death Overs Economy
* Unique Dismissals
* Batter vs Bowler Statistics
---

---

## Conclusion

This project demonstrates how SQL can be used beyond database querying to solve real analytical problems. By analyzing IPL 2026 ball-by-ball data, the project converts thousands of individual deliveries into actionable insights about players, teams, and venues.

It showcases practical SQL skills applicable to data analytics, business intelligence, sports analytics, and data-driven decision-making.
