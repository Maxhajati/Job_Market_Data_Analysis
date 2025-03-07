# Job Market Data Analysis Using SQL

1_time-based_analysis_of_job_postings  
![time-based_analysis](https://github.com/user-attachments/assets/106960be-82d9-44fb-b1d9-f58a8b4d3e8c)


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

2_demand_distributed_across_jobs  
![demand_distributed_across_jobs](https://github.com/user-attachments/assets/0488a902-87ea-4529-ad40-a661ac549865)

3_salary_trends_for_different_jobs  
![salary_trends_for_different_jobs](https://github.com/user-attachments/assets/392afe24-99ae-40d0-bc77-4a323720d981)

4_geographical_distribution_of_jobs_across_canada  
![geographical_distribution_of_jobs_across_canada](https://github.com/user-attachments/assets/2b856472-be1a-4126-a2b0-cee2565e3595)

5_top_recruiters_in_the_data_job_market  
![top_recruiters_in_the_data_job_market](https://github.com/user-attachments/assets/f852f1a3-ca14-4ace-a9df-4c7defd4f498)

6_work_model_breakdown  
![work_model_breakdown](https://github.com/user-attachments/assets/4f293a0a-a9b7-43ed-b455-f5d7807f7401)

