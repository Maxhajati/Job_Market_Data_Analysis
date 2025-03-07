# Job Market Data Analysis Using SQL

## Loading the Database in the Table

This SQL query creates the `job_posting_fact` table, which serves as the foundation for job market data analysis. It defines key attributes related to job postings, such as job title, salary, location, company, work model, posting date, schedule, and experience level.  

Here's the structure of the job postings table: 

```sql
CREATE TABLE job_posting_fact (
    job_id SERIAL PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL,
    salary NUMERIC(10, 2),
    city VARCHAR(100) NOT NULL,
    province VARCHAR(100) NOT NULL,
    company VARCHAR(100) NOT NULL,
    work_option VARCHAR(50) NOT NULL,
    posted_date DATE NOT NULL,
    job_schedule VARCHAR(50) NOT NULL,
    level_needed VARCHAR(50) NOT NULL
);
```
And here is the generated table in SQL:  
![Table](https://github.com/user-attachments/assets/89048b82-613c-40ee-804c-6896b34dc9b6)


## Time-Based Analysis of Job Postings    
This SQL query analyzes job posting trends by aggregating the total number of postings for each day of the week.  

```sql
SELECT 
    TO_CHAR(posted_date, 'Day') AS day_of_week, 
    COUNT(*) AS total_postings
FROM 
    job_posting_fact
GROUP BY 
    day_of_week, EXTRACT(DOW FROM posted_date)
ORDER BY 
    CASE 
        WHEN EXTRACT(DOW FROM posted_date) = 0 THEN 7 
        ELSE EXTRACT(DOW FROM posted_date)
    END;
```

Here's the breakdown of job postings by day of the week within the dataset:  
![time-based_analysis](https://github.com/user-attachments/assets/106960be-82d9-44fb-b1d9-f58a8b4d3e8c)


## Demand Distribution Across Jobs  
This SQL query analyzes the distribution of job postings across various job titles in the dataset.  

```sql
SELECT 
    job_title, 
    COUNT(*) AS job_count,
    ROUND((COUNT(*) * 100.0 / 2385), 2) || '%' AS job_percentage 
FROM 
    job_posting_fact
GROUP BY 
    job_title
ORDER BY 
    job_count DESC;
```

Here's the breakdown of job postings across different job titles:  
![demand_distributed_across_jobs](https://github.com/user-attachments/assets/0488a902-87ea-4529-ad40-a661ac549865)

## Salary Trends for Different Jobs  
This SQL query examines the salary distribution for each job title within the dataset.  

```sql
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
```

Here's the breakdown of salary trends across different job titles:  
![salary_trends_for_different_jobs](https://github.com/user-attachments/assets/392afe24-99ae-40d0-bc77-4a323720d981)

## Geographical Distribution of Jobs Across Canada  
This SQL query analyzes the geographical distribution of job postings across different provinces in Canada.  


```sql
SELECT 
    province,  
    COUNT(*) AS total_postings,
    ROUND((COUNT(*) * 100.0 / 2385), 2) || '%' AS job_percentage
FROM 
  job_posting_fact
WHERE 
  province IS NOT NULL
GROUP BY 
  province
ORDER BY 
  total_postings DESC;
```

Here's the breakdown of job postings by province:  
![geographical_distribution_of_jobs_across_canada](https://github.com/user-attachments/assets/2b856472-be1a-4126-a2b0-cee2565e3595)

## Top Recruiters in the Data Job Market  
This SQL query identifies the top 10 companies with the highest number of job postings in the dataset.  

```sql
SELECT 
    company,  
    COUNT(*) AS total_postings,
    ROUND((COUNT(*) * 100.0 / 2385), 2) || '%' AS job_percentage
FROM 
  job_posting_fact
WHERE 
  company IS NOT NULL
GROUP BY 
  company
ORDER BY 
  total_postings DESC
LIMIT 10;
```

Here's the breakdown of the top recruiters in Canada's data industry:  
![top_recruiters_in_the_data_job_market](https://github.com/user-attachments/assets/f852f1a3-ca14-4ace-a9df-4c7defd4f498)

## Work Model Breakdown  
This SQL query analyzes the distribution of job postings based on different work models.  

```sql
SELECT 
    work_option,  
    COUNT(*) AS total_postings,
    ROUND((COUNT(*) * 100.0 / 2385), 2) || '%' AS job_percentage
FROM 
  job_posting_fact
WHERE 
  work_option IS NOT NULL
GROUP BY 
  work_option
ORDER BY 
  total_postings DESC;
```

Here's the breakdown of job postings by work model:  
![work_model_breakdown](https://github.com/user-attachments/assets/4f293a0a-a9b7-43ed-b455-f5d7807f7401)
