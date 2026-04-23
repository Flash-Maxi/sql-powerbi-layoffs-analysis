
# MySQL Layoffs Data Cleaning and EDA Project

## Project Overview
This project focuses on cleaning and analyzing layoffs data from different companies and locations between 2020 and 2023 using MySQL.

The aim of the project was to convert raw data into a clean, structured, and analysis-ready format, and then perform exploratory data analysis (EDA) to identify key layoff trends.

## Tools Used
- MySQL
- MySQL Workbench

## Data Cleaning Steps
- Created a working copy of the raw dataset
- Identified and removed duplicate records
- Trimmed extra spaces from company names
- Standardized industry and country values
- Converted the date column from text format to DATE format
- Replaced text-based null values with actual NULL values
- Populated missing industry values where possible
- Removed rows with insufficient layoff information

## Exploratory Data Analysis
- Calculated total layoffs in the dataset
- Analyzed layoffs by country
- Analyzed layoffs by year
- Examined monthly layoff trends
- Identified companies with the highest layoffs

## Project Files
- `layoffs_data_cleaning.sql` → SQL queries used for cleaning the raw data
- `layoffs_eda.sql` → SQL queries used for exploratory data analysis
- `insights.md` → Key observations from the analysis

## Outcome
The project improved the quality and consistency of the layoffs dataset and helped uncover patterns in layoffs across companies, countries, and time.

## Author
Rishi Raj
