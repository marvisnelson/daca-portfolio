# Identifying Lost Customers

This repository contains data analysis for *UrbanStyle*, focusing on identifying non-converting registered users, analyzing geographic and time-based drop-off patterns, and delivering actionable win-back strategies.

---

## Executive Summary

* *Customer Breakdown:* Out of the analyzed user base, *2,551 are active customers* (completed at least 1 purchase) and *599 are lost customers* (registered but made 0 purchases).
* *Timeframe:* Evaluated customer sign-ups registered between *January 2, 2020, and February 27, 2025*.
* *Geographic Spread:* Identified lost customers across *12 cities, with the largest concentration in **Tallinn (231)* and *Tartu (133)*.
* *Key Discovery:* Time-based cohort analysis revealed that *January consistently recorded the highest count of lost customers* across all five years.

---

## Technical Methodology

Lost customers were identified using a LEFT JOIN between customer profiles and sales records to isolate accounts with NULL transaction IDs. Further analysis evaluated customer counts by geographic location and grouped registration dates by month using DATE_TRUNC to detect long-term conversion patterns.

All query implementations can be found in _role_b_lost_customers.sql.

---

## Strategic Recommendation

Anna should launch an *automated 3-step email campaign* featuring product reminders, customer reviews, and a first-time purchase discount. This directly counters common drop-off triggers like unexpected checkout fees, sign-up friction, or distraction—especially for high-churn registration periods like January.

---

## Repository Structure

* README.md — Project summary, technical methodology, and core insights.
* report.md — Detailed breakdown and strategic deliverables.
* _role_b_lost_customers.sql — Raw SQL scripts.
* assets/ — Visual proof and query output screenshots (week 3 png results).