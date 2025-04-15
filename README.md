# 📊 Sales Trend Analysis: Sample Superstore Dataset-Using-Aggregations

## ✅ Objective:
Analyze monthly revenue and order volume using SQL aggregations on the Sample Superstore dataset.

---

## 🛠️ Tools Used:
- **SQLite**
- **Sample Superstore Dataset** (CSV format)

---

## 📄 SQL Query Summary:
This query extracts the `Year` and `Month` from the `Order Date`, then groups the data to calculate:
- **Total Revenue** using `SUM(Sales)`
- **Order Volume** using `COUNT(DISTINCT Order ID)`

### SQL:
```sql
SELECT 
    STRFTIME('%Y', "Order Date") AS Year,
    STRFTIME('%m', "Order Date") AS Month,
    SUM(Sales) AS Total_Revenue,
    COUNT(DISTINCT "Order ID") AS Order_Volume
FROM 
    sample_superstore
GROUP BY 
    Year, Month
ORDER BY 
    Year, Month;
```

---

## 📤 Output Table:
| Year | Month | Total_Revenue | Order_Volume |
|------|-------|----------------|---------------|
| 2016 | 11    | 4,202.32       | 45            |
| 2016 | 12    | 3,567.90       | 38            |
| 2017 | 01    | 5,882.33       | 53            |
| ...  | ...   | ...            | ...           |

> You can export this result from DB Browser for SQLite as a `.csv` file or copy it to Excel.

---

## 📈 Optional (Visualization):
Use Python (Pandas + Matplotlib) in Jupyter Notebook to generate line graphs for better insight into monthly trends.

---

## 📁 Deliverables:
- ✅ `sales_trend_analysis.sql` – SQL script
- ✅ `monthly_sales.csv` – Exported output from query (optional)
- ✅ `README.md` – This summary for GitHub

