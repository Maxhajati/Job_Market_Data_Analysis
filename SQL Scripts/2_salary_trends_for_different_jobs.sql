/*
The goal of executing this SQL query is to analyze the salary distribution for each job title within the dataset. 
The query calculates the minimum salary, median salary, and maximum salary for each distinct job title by using 
aggregate functions. Specifically, it uses the MIN() function to determine the lowest salary, the PERCENTILE_CONT(0.5) 
function to find the median salary, and the MAX() function to identify the highest salary for each job title. The CAST() 
function is applied to convert the results into integer values for clarity. The query filters out rows with NULL salary 
values and groups the results by job_title to provide salary statistics for each role. Finally, the results are ordered 
by the minimum salary in ascending order, allowing for easy comparison of salary ranges across different job titles. 
This analysis helps to understand the salary trends within various roles in the job market.
*/


SELECT 
    job_title, 
    CAST(MIN(salary) AS INT) AS min_salary, 
    CAST(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary) AS INT) AS median_salary,
    CAST(MAX(salary) AS INT) AS max_salary
FROM 
    job_posting_fact
WHERE 
    salary IS NOT NULL
GROUP BY 
    job_title
ORDER BY 
    min_salary ASC;


/* Insights

Here's the breakdown of the salary trends across different job titles within the dataset:

- **Data Analysts** and **Business Analysts** have lower median salaries (78,000 and 83,000), reflecting high demand but fewer specialized technical skills.  
- **ML Engineers** earn the highest median salary (108,000), highlighting the demand for AI expertise.  
- **Cloud Engineers** (105,500) and **Data Scientists** (103,500) follow closely, emphasizing the value of cloud management and analytics.  
- **Data Engineers** (103,000) earn competitively, showcasing the need for data pipeline expertise.  
- Salary spreads, especially for **Data Scientists** and **ML Engineers**, indicate opportunities for higher earnings with experience.

=======
RESULTS
=======

[
  {
    "job_title": "Data Analyst",
    "min_salary": 35776,
    "median_salary": 78000,
    "max_salary": 208000
  },
  {
    "job_title": "Data Scientist",
    "min_salary": 36000,
    "median_salary": 103500,
    "max_salary": 194000
  },
  {
    "job_title": "Business Analyst",
    "min_salary": 36400,
    "median_salary": 83000,
    "max_salary": 236080
  },
  {
    "job_title": "ML Engineer",
    "min_salary": 38480,
    "median_salary": 108000,
    "max_salary": 260000
  },
  {
    "job_title": "Cloud Engineer",
    "min_salary": 44000,
    "median_salary": 105500,
    "max_salary": 254800
  },
  {
    "job_title": "Data Engineer",
    "min_salary": 48000,
    "median_salary": 103000,
    "max_salary": 202000
  }
*/
