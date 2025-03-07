/*
The goal of executing this SQL query is to analyze the geographical distribution of job postings across different provinces in Canada. 
By counting the total number of job postings for each province and calculating the percentage share relative to the total of 2,385 
postings, the query provides insights into which provinces have the highest demand for data-related roles. The results are grouped 
by province, ensuring that each location's contribution to the job market is clearly represented. Finally, the data is sorted in 
descending order based on total postings, making it easy to identify the regions with the most job opportunities
*/

  
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


/* Insights

Here's the breakdown of job postings across provinces in Canada:

- Ontario leads with 60.17% of job postings, dominating the market.
- Quebec (10.65%) and British Columbia (10.31%) show strong demand.
- Alberta holds 7.71%, indicating a moderate presence.
- Manitoba, Nova Scotia, and Saskatchewan have limited but existing opportunities.

=======
RESULTS
=======

[
  {
    "province": "Ontario",
    "total_postings": 1435,
    "job_percentage": "60.17%"
  },
  {
    "province": "Quebec",
    "total_postings": 254,
    "job_percentage": "10.65%"
  },
  {
    "province": "British Columbia",
    "total_postings": 246,
    "job_percentage": "10.31%"
  },
  {
    "province": "Alberta",
    "total_postings": 184,
    "job_percentage": "7.71%"
  },
  {
    "province": "Anywhere",
    "total_postings": 152,
    "job_percentage": "6.37%"
  },
  {
    "province": "Manitoba",
    "total_postings": 36,
    "job_percentage": "1.51%"
  },
  {
    "province": "Nova Scotia",
    "total_postings": 32,
    "job_percentage": "1.34%"
  },
  {
    "province": "Saskatchewan",
    "total_postings": 24,
    "job_percentage": "1.01%"
  },
  {
    "province": "New Brunswick",
    "total_postings": 15,
    "job_percentage": "0.63%"
  },
  {
    "province": "Newfoundland and Labrador",
    "total_postings": 4,
    "job_percentage": "0.17%"
  },
  {
    "province": "Prince Edward Island",
    "total_postings": 1,
    "job_percentage": "0.04%"
  },
  {
    "province": "New Brunswick",
    "total_postings": 1,
    "job_percentage": "0.04%"
  },
  {
    "province": "Yukon",
    "total_postings": 1,
    "job_percentage": "0.04%"
  }
]
*/
