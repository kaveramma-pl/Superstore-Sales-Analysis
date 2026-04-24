# Superstore Sales Analysis Dashboard

## Project Overview

This project analyzes retail sales data to uncover key business insights related to revenue, profitability, customer segments, and regional performance. The analysis was performed using SQL, Python, and Power BI, demonstrating an end-to-end data analytics workflow from data cleaning to dashboard creation.

---

## Objective

To analyze retail sales data and generate actionable insights that support data-driven decision making across sales, profit, customers, and product performance.

---

## Tools and Technologies

* SQL (SQLite) – Data extraction, querying, and aggregation
* Python (Pandas, Matplotlib, Seaborn) – Data cleaning and exploratory analysis
* Power BI – Dashboard and visualization

---

## Dataset

Kaggle Sample Superstore dataset containing retail sales information.

---

## Data Cleaning and Preprocessing

The dataset contained inconsistent date formats, including DD-MM-YYYY and MM-DD-YYYY representations.

To standardize the data, a rule-based approach was applied where values greater than 12 were treated as the day component.

For ambiguous cases where both day and month values were less than or equal to 12, a consistent assumption was used during conversion. While this may introduce minor inaccuracies at the record level, it does not significantly affect overall trend analysis or aggregated insights.

Data quality checks were performed before proceeding with analysis.

---

## Approach Note

Data cleaning for date standardization was first performed using Python as part of the exploratory analysis phase.

Later, the same cleaning logic was implemented in SQL to demonstrate data transformation capabilities directly within the database layer.

Both implementations follow the same rule-based logic and were used to validate consistency across tools.

---

## Key Analysis Performed

### Sales and Profit Analysis

* Total Sales approximately 2.3M
* Total Profit approximately 286K
* Category-wise performance comparison

---

### Time Series Analysis

* Monthly sales trends across years
* Seasonal patterns and fluctuations identified

---

### Customer Segmentation

* Sales distribution across:

  * Consumer
  * Corporate
  * Home Office

---

### Geographic Analysis

* Top performing cities by sales
* Regional performance comparison

---

### Product Level Insights

* Top sub-categories by quantity sold
* Identification of high demand and low profitability products

---

## Dashboard Features

* KPI metrics for Sales, Profit, Quantity
* Category wise performance comparison
* Monthly sales trend analysis
* Segment wise breakdown
* City wise performance analysis
* Sub-category quantity distribution
* Interactive filters for region, category, and year

---

## Key Insights

* Technology category generates the highest revenue
* Consumer segment contributes the largest share of sales
* Some high volume products have low profitability
* Sales show seasonal variation across months
* Regional performance significantly impacts revenue distribution

---

## Conclusion

This project demonstrates how raw retail data can be transformed into meaningful business insights using SQL, Python, and Power BI. It includes data cleaning, analysis, visualization, and interpretation of business trends.

---

## Project Structure

data - Dataset files
sql - SQL queries
python - Jupyter notebooks
powerbi - Dashboard file

---

## Author

Kaveramma -
Aspiring Data Analyst

---
