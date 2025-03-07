
/*
The goal of executing this SQL query is to analyze the distribution of job postings across various job titles within the dataset. 
It calculates the total count of job postings for each distinct job_title and determines the percentage of the total job postings 
that each job title represents, assuming a total of 2385 job postings. By grouping the results by job_title, the query provides a 
clear breakdown of how different roles contribute to the overall job market within the data sector. The results are then ordered 
by the number of job postings in descending order, allowing for easy identification of the most in-demand roles. This analysis 
helps to understand the relative demand for different job titles and their importance in the context of the total job postings available.
*/


/* 
    The data is pulled from the job_posting_fact table, which contains job posting information. 
    The results are grouped by job_title so that the COUNT and percentage are calculated for each role.
*/



SELECT * FROM employees;




SELECT 
    -- Select the job title from the table to categorize job postings
    job_title, 
    
    -- Count the total number of job postings for each job title
    -- COUNT(*) counts the number of rows for each job_title
    COUNT(*) AS role_count,
    
    -- Calculate the percentage of job postings for each job title out of the total (2385)
    -- ROUND() function is used to round the result to 2 decimal places
    -- (COUNT(*) * 100.0 / 2385) calculates the percentage of job postings
    -- || '%' concatenates the percentage symbol to the result
    ROUND((COUNT(*) * 100.0 / 2385), 2) || '%' AS role_percentage
    
-- From the job_posting_fact table, which contains the job posting data
FROM job_posting_fact

-- Group the results by job_title so that the COUNT and percentage are calculated for each role
GROUP BY job_title

-- Order the results in descending order based on role_count
-- This ensures that job titles with more postings appear at the top
ORDER BY role_count DESC;
