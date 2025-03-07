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
