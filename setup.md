# Setup Guide

This guide explains how to set up and run the SQL Layoffs Data Cleaning and EDA project using MySQL Workbench.

---

## Prerequisites

Make sure you have the following installed:

* MySQL Server (8.0 or above recommended)
* MySQL Workbench

---

## Project Structure

```text
sql-layoffs-analysis/
│
├── data/
│   └── layoffs_raw.csv
│
├── README.md
├── setup.md
├── layoffs_data_cleaning.sql
├── layoffs_eda.sql
└── insights.md
```

---

## Step 1: Create Database

Open MySQL Workbench and run:

```sql
CREATE DATABASE layoffs_project;
USE layoffs_project;
```

---

## Step 2: Import Dataset

Import the dataset from:

```
data/layoffs_raw.csv
```

### Using MySQL Workbench:

1. Go to **Server → Data Import**
2. Select **Import from Self-Contained File**
3. Choose `layoffs_raw.csv`
4. Import it as a table named:

```
layoffs
```

> Alternatively, use **Table Data Import Wizard** for CSV import.

---

## Step 3: Run Data Cleaning Script

Open:

```
layoffs_data_cleaning.sql
```

Run the script step-by-step or execute all.

This will:

* Create staging tables
* Remove duplicate records
* Clean and standardize text fields
* Convert date format
* Handle missing values
* Remove unnecessary rows

### Output Table:

```
layoffs_standard2
```

---

## Step 4: Run EDA Script

Open:

```
layoffs_eda.sql
```

Run the queries to perform analysis on the cleaned dataset.

This includes:

* Total layoffs calculation
* Layoffs by company, country, and year
* Monthly trends
* Top affected companies

---

## Notes

* Ensure the `layoffs` table exists before running the cleaning script
* Some updates require disabling safe mode:

```sql
SET SQL_SAFE_UPDATES = 0;
```

Re-enable after execution:

```sql
SET SQL_SAFE_UPDATES = 1;
```

* The cleaned dataset used for analysis is:

```
layoffs_standard2
```

---

## Output

* Cleaned dataset: `layoffs_standard2`
* Analytical queries: `layoffs_eda.sql`
* Key insights: `insights.md`

---

## Author

Rishi Raj
