/*
The goal of executing this SQL query is to analyze the distribution of job postings based on work options (Hybrid, In-Person, and Remote) 
within the dataset. The query counts the total number of job postings for each work option and calculates the percentage of the total 
job postings that each work option represents, assuming a total of 2,385 job postings. By grouping the results by work option, 
the query provides a clear breakdown of the demand for different work models. The results are then ordered by the total number 
of postings in descending order, making it easy to see the most common work options in the job market. This analysis helps 
in understanding how work models are distributed and which ones are more prevalent in the data sector.
*/

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


/* Insights

Here's the breakdown of the work model:

- Hybrid work makes up 57% of the workforce, blending in-person and remote work options.
- In-person roles account for 37%, highlighting the demand for traditional office settings.
- Remote positions represent 6%, a smaller but expanding segment of the job market.
- This distribution shows a clear preference for a hybrid work structure, while remote roles continue to grow.

=======
RESULTS
=======

[
  {
    "work_option": "Hybrid",
    "total_postings": 1350,
    "job_percentage": "56.60%"
  },
  {
    "work_option": "In-Person",
    "total_postings": 883,
    "job_percentage": "37.02%"
  },
  {
    "work_option": "Remote",
    "total_postings": 152,
    "job_percentage": "6.37%"
  }
]
*/
