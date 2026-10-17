# ecommerce_sql_performance_analysis
# 📊 E-Commerce Sales Performance & Customer Behavior Analysis

## 🎯 Project Overview
This project involves an in-depth data analysis of an e-commerce retail database using advanced MySQL. The goal is to audit business health, identify high-value VIP customers, evaluate operational efficiency, and track revenue trends to support strategic decision-making.

---

## 🛠️ Tech Stack & SQL Skills Demonstrated
* **Database Management System:** MySQL / MySQL Workbench
* **Advanced Aggregations:** `GROUP BY`, `SUM`, `AVG`, `COUNT`, and the `HAVING` clause.
* **Window Functions:** `RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`, and `PARTITION BY`.
* **Offset & Time Analysis:** `LEAD()`, `LAG()`, date math (`DATEDIFF()`), and date parts (`YEAR()`).
* **Advanced Querying:** Common Table Expressions (CTEs) and conditional data flagging.

---

## 📁 Repository Structure
* `README.md` — Project documentation, objectives, and key findings.
* `queries.sql` — Well-commented, production-ready SQL script containing all analysis phases.

---

## 📈 Analysis Phases & Key Insights

### Phase 1: Executive Summary & High-Value Customer Baseline
* **Objective:** Establish revenue baselines and isolate top-tier customers driving the majority of lifetime sales.
* **Insight:** Identified high-value VIP customers generating over $30,000 in total lifetime spend to target for loyalty programs.

### Phase 2: Customer Tiering & Competitive Ranking
* **Objective:** Rank customers by payment volume using tie-breaking logic without gaps.
* **Technique:** Utilized `RANK()` and `DENSE_RANK()` partitioned and ordered by transaction totals.

### Phase 3: Operational Efficiency & Logistics Audit
* **Objective:** Evaluate fulfillment timelines and payment intervals.
* **Technique:** Calculated delivery duration using `DATEDIFF(shippedDate, orderDate)` and tracked chronological payment gaps using `LEAD()` and `LAG()`.

### Phase 4: Advanced Segmentation & CTEs
* **Objective:** Isolate specific annual milestones and flag large-scale transactions.
* **Technique:** Wrapped partitioned queries inside Common Table Expressions (CTEs) to extract the first order of every year.

---

## 🚀 How to Run the Queries
1. Clone this repository or copy the code from `queries.sql`.
2. Open your SQL environment (e.g., MySQL Workbench).
3. Execute the script against your target e-commerce sample database.
