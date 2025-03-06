-- Select job title and count the occurrences of each role
SELECT 
    job_title,  -- Column displaying the title of each job
    
    -- Count the number of job postings for each unique job title
    COUNT(*) AS job_count,  -- Alias to display the count as 'job_count'
    
    -- Calculate the percentage of each job title relative to the total (2385)
    -- ROUND function ensures 2 decimal places
    -- '||' concatenates the '%' sign to the result
    ROUND((COUNT(*) * 100.0 / 2385), 2) || '%' AS job_percentage  -- Alias for the percentage column

-- Specify the table to fetch data from
FROM job_posting_fact

-- Group the results by job title to aggregate counts
GROUP BY job_title

-- Order the results by the count of job titles in descending order
ORDER BY job_count DESC;
