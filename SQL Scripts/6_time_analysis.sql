/*
The goal of executing this SQL query is to analyze the distribution of job postings across various job titles within the dataset. 

*/


SELECT 
    TO_CHAR(posted_date, 'Day') AS day_of_week, 
    COUNT(*) AS total_postings
FROM 
  job_posting_fact
GROUP BY 
  day_of_week
ORDER BY 
  day_of_week;


/* Insights

Here's the breakdown of the distribution of job postings across various job titles within the dataset:


=======
RESULTS
=======

[
  {
    "day_of_week": "Monday",
    "total_postings": 417
  },
  {
    "day_of_week": "Tuesday",
    "total_postings": 483
  },
  {
    "day_of_week": "Wednesday",
    "total_postings": 443
  },
  {
    "day_of_week": "Thursday",
    "total_postings": 473
  },
  {
    "day_of_week": "Friday",
    "total_postings": 461
  },
  {
    "day_of_week": "Saturday",
    "total_postings": 102
  },
  {
    "day_of_week": "Sunday",
    "total_postings": 6
  }
]
*/
