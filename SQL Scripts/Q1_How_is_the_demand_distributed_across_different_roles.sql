
/*
The goal of executing this SQL query is to analyze the distribution of job postings across various job titles within the dataset. 
It calculates the total count of job postings for each distinct job_title and determines the percentage of the total job postings 
that each job title represents, assuming a total of 2385 job postings. By grouping the results by job_title, the query provides a 
clear breakdown of how different roles contribute to the overall job market within the data sector. The results are then ordered 
by the number of job postings in descending order, allowing for easy identification of the most in-demand roles. This analysis 
helps to understand the relative demand for different job titles and their importance in the context of the total job postings available.
*/


SELECT 
    job_title, 
    COUNT(*) AS job_count,
    ROUND((COUNT(*) * 100.0 / 2385), 2) || '%' AS role_percentage
FROM 
    job_posting_fact
GROUP BY 
    job_title
ORDER BY 
    job_count DESC;


/* Insights

Here's the breakdown of the distribution of job postings across various job titles within the dataset:

- Business Analysts lead with 36.3%, emphasizing their key role in bridging business and tech.
- Data Analysts follow at 29.5%, reflecting the high need for data gathering and analysis.
- Data Engineers are in demand at 10.9%, highlighting the need for experts in data architecture.
- Data Scientists and Cloud Engineers each hold 9.1%, showcasing the importance of analytics and cloud infrastructure.
- ML Engineers account for 5.2%, showing the demand for AI model developers.

=======
RESULTS
=======

[
  {
    "job_title": "Business Analyst",
    "job_count": 866,
    "job_percentage": "36.31%"
  },
  {
    "job_title": "Data Analyst",
    "job_count": 703,
    "job_percentage": "29.48%"
  },
  {
    "job_title": "Data Engineer",
    "job_count": 260,
    "job_percentage": "10.90%"
  },
  {
    "job_title": "Cloud Engineer",
    "job_count": 217,
    "job_percentage": "9.10%"
  },
  {
    "job_title": "Data Scientist",
    "job_count": 216,
    "job_percentage": "9.06%"
  },
  {
    "job_title": "ML Engineer",
    "job_count": 123,
    "job_percentage": "5.16%"
  }
]
*/
