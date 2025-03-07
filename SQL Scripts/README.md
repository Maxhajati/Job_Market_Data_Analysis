# Job Market Data Analysis Using SQL

## Time-Based Analysis of Job Postings  
The goal of executing this SQL query is to analyze job posting trends by aggregating the total number of postings for each day of the week.  

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



## demand_distributed_across_jobs 
The goal of executing this SQL query is to analyze the distribution of job postings across various job titles within the dataset.  

```sql
SELECT

```

Here's the breakdown of the distribution of job postings across various job titles within the dataset:  
![demand_distributed_across_jobs](https://github.com/user-attachments/assets/0488a902-87ea-4529-ad40-a661ac549865)




## salary_trends_for_different_jobs  
The goal of executing this SQL query is to analyze the salary distribution for each job title within the dataset.  

```sql
SELECT

```

Here's the breakdown of the salary trends across different job titles within the dataset:    
![salary_trends_for_different_jobs](https://github.com/user-attachments/assets/392afe24-99ae-40d0-bc77-4a323720d981)











## geographical_distribution_of_jobs_across_canada
The goal of executing this SQL query is to analyze the geographical distribution of job postings across different provinces in Canada. 

```sql
SELECT

```

Here's the breakdown of job postings across provinces in Canada:    
![geographical_distribution_of_jobs_across_canada](https://github.com/user-attachments/assets/2b856472-be1a-4126-a2b0-cee2565e3595)









## top_recruiters_in_the_data_job_market   
The goal of executing this SQL query is to identify the top 10 companies with the highest number of job postings in the dataset.  

```sql
SELECT

```

Here's the breakdown of the top job recruiters in Canada's data industry:  
![top_recruiters_in_the_data_job_market](https://github.com/user-attachments/assets/f852f1a3-ca14-4ace-a9df-4c7defd4f498)








## work_model_breakdown  
The goal of executing this SQL query is to analyze the distribution of job postings based on work options within the dataset.   

```sql
SELECT

```

Here's the breakdown of the work model:    
![work_model_breakdown](https://github.com/user-attachments/assets/4f293a0a-a9b7-43ed-b455-f5d7807f7401)


