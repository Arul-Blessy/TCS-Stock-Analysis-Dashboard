# 📈 TCS Stock Performance & Shareholder Actions Analysis

## 📌 **Project Overview**
### **This project provides a deep-dive analysis of Tata Consultancy Services (TCS) stock data spanning 2002–2021. By leveraging SQL for data validation and Power BI for advanced visualization, the project uncovers long-term growth trends and detailed corporate action history to assist in investor decision-making.**

## 📊 Dashboard Preview

![tcs gif](https://github.com/user-attachments/assets/6ef09b49-eb9f-40c3-b1d0-44f07adce84e)

---

## 🛠️ **Tech Stack**
* **Data Analysis:** `SQL` (Multi-tab querying for historical trends)
* **Visualization:** `Power BI Desktop`
* **Data Modeling:** `DAX (Data Analysis Expressions)`
* **ETL Process:** `Power Query` (Text-to-Date transformation & Data Cleaning)

---

## 📊 **Key Results & Insights**

### 📈 **Financial Performance**
* **All-Time Highs:** Identified peak price points and market resistance levels using "The Record Breaker" logic.
* **Volatility Analysis:** Successfully mapped 20 years of price movement to identify historical market corrections.

### 💡 **Shareholder Insights**
* **Dividend Consistency:** Identified 100% payout consistency, highlighting TCS's reputation as a top-tier wealth creator.
* **Bonus & Splits:** Tracked major corporate actions, specifically the **2009 1:1 Bonus Issue** via the "Bonus Tracker" script.
* **Dynamic Slicing:** Developed "Slicer-Aware" KPI cards that update real-time to show the "Latest Dividend" for any selected fiscal year.

---

## 🚀 **Project Structure & Files**

| Folder / File Name | Description |
| :--- | :--- |
| **`SQL_Queries/`** | Contains: `All-Time High.sql`, `Bonus Tracker.sql`, `Live summary.sql`, `TCS Stock Action.sql`, `TCS Stock History.sql`, `The Record Breaker.sql`. |
| **`TCS raw csv dataset/`** | Raw data files: `TCS_stock_action.csv`, `TCS_stock_history.csv`, and `TCS_stock_info.csv`. |
| **`TCS stock live & latest.pbix`** | Final Interactive Power BI Dashboard. |

---

## 💻 **How to Run the Project**

### **1. SQL Analysis**
Open the scripts in the `SQL_Queries/` folder to view the logic for:
* **Bonus Tracker:** Filtering corporate actions.
* **The Record Breaker:** Identifying peak stock price events.
* **Live Summary:** Aggregating the latest market stats.

### **2. Power BI Dashboard**
1. Open `TCS stock live & latest.pbix` using **Power BI Desktop**.
2. **Important:** If the data shows errors, go to **Transform Data > Data Source Settings** and point the source to the files in your `TCS raw csv dataset/` folder.
3. Use the **Navigation Sidebar** on the left to switch between pages (Hold `Ctrl` + Click).

---
*Developed for the Unified Mentor Internship Program.*
