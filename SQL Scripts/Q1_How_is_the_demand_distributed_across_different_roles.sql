SELECT 
    job_title, 
    COUNT(*) AS role_count,
    ROUND((COUNT(*) * 100.0 / 2385), 2) || '%' AS role_percentage
FROM job_posting_fact
GROUP BY job_title
ORDER BY role_count DESC;
