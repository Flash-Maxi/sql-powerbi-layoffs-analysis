-- =========================================
-- MySQL Layoffs Exploratory Data Analysis
-- =========================================

-- View cleaned data
SELECT *
FROM layoffs_standard2;

-- Total layoffs in the whole dataset
SELECT SUM(total_laid_off) AS total_laid_off
FROM layoffs_standard2;

-- Country-wise total layoffs
SELECT country, SUM(total_laid_off) AS total_laid_off
FROM layoffs_standard2
GROUP BY country
ORDER BY total_laid_off DESC;

-- Year-wise total layoffs
SELECT YEAR(`date`) AS layoff_year,
       SUM(total_laid_off) AS total_laid_off
FROM layoffs_standard2
GROUP BY YEAR(`date`)
ORDER BY total_laid_off DESC;

-- Monthly layoffs across all years
SELECT SUBSTRING(`date`, 1, 7) AS `month`,
       SUM(total_laid_off) AS total_laid_off
FROM layoffs_standard2
WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
GROUP BY `month`
ORDER BY `month` ASC;

-- Months with highest layoffs
SELECT SUBSTRING(`date`, 1, 7) AS `month`,
       SUM(total_laid_off) AS total_laid_off
FROM layoffs_standard2
WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
GROUP BY `month`
ORDER BY total_laid_off DESC;

-- Company-wise total layoffs
SELECT company,
       SUM(total_laid_off) AS total_laid_off
FROM layoffs_standard2
GROUP BY company
ORDER BY total_laid_off DESC;
