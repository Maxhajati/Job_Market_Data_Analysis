/*
The goal of executing this SQL query is to identify the top 10 companies with the highest number of job postings in the dataset. 
By counting the total job postings for each company and calculating their percentage share relative to the total postings, 
the query provides insights into which employers are driving demand for data-related roles. The results are grouped by 
company, ensuring that each organization's contribution to the job market is clearly represented. Finally, the data is 
sorted in descending order based on total postings, making it easy to recognize the top employers in the industry.
*/

===============================================================

SELECT 
    company,  
    COUNT(*) AS total_postings,
    ROUND((COUNT(*) * 100.0 / 2385), 2) || '%' AS job_percentage
FROM 
  job_posting_fact
WHERE 
  company IS NOT NULL
GROUP BY 
  company
ORDER BY 
  total_postings DESC
LIMIT 10;

===============================================================

/* Insights

Here's the breakdown of the top job recruiters in Canada's data industry:

- TD leads with 4.23% of total job postings, making it the top employer.
- Scotiabank follows with 2.60%, showing strong demand in the finance sector.
- Loblaw ranks third at 1.93%, highlighting opportunities in retail and data analytics.
- RBC and CIBC have 1.76% and 1.26%, respectively, reinforcing the banking sector's role in hiring.
- Compest (1.22%), Manulife (1.13%), and CGI (1.13%) reflect hiring in consulting and insurance.
- Intact (1.09%) and BMO (1.05%) round out the top 10, further emphasizing the financial sector's demand.

=======
RESULTS
=======

[
  {
    "company": "TD",
    "total_postings": 101,
    "job_percentage": "4.23%"
  },
  {
    "company": "Scotiabank",
    "total_postings": 62,
    "job_percentage": "2.60%"
  },
  {
    "company": "Loblaw",
    "total_postings": 46,
    "job_percentage": "1.93%"
  },
  {
    "company": "RBC",
    "total_postings": 42,
    "job_percentage": "1.76%"
  },
  {
    "company": "CIBC",
    "total_postings": 30,
    "job_percentage": "1.26%"
  },
  {
    "company": "Compest",
    "total_postings": 29,
    "job_percentage": "1.22%"
  },
  {
    "company": "Manulife",
    "total_postings": 27,
    "job_percentage": "1.13%"
  },
  {
    "company": "CGI",
    "total_postings": 27,
    "job_percentage": "1.13%"
  },
  {
    "company": "Intact",
    "total_postings": 26,
    "job_percentage": "1.09%"
  },
  {
    "company": "BMO",
    "total_postings": 25,
    "job_percentage": "1.05%"
  }
]
*/
