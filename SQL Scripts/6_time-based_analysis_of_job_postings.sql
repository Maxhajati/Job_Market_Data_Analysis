/* 
The goal of executing this SQL query is to analyze job posting trends by aggregating the total number of postings for each day of the week. 
The query extracts the weekday from the `posted_date` column, counts the number of postings per day, groups the results accordingly, and 
orders them chronologically. This helps identify patterns in job postings, such as which days have the highest or lowest activity. The final 
output is formatted into a JSON structure, making it easier for further analysis, visualization, or integration into a dashboard.
*/


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


/* Insights

Here's the breakdown of job postings by day of the week within the dataset:

- Job postings peak on Tuesday and remain high through Friday.
- The number of postings drops significantly over the weekend, especially on Sunday.
- Employers likely focus on job postings during the workweek, with minimal activity on Saturdays and Sundays.

=======
RESULTS
=======

[
  {
    "day_of_week": "Monday",
    "total_postings": "417"
  },
  {
    "day_of_week": "Tuesday",
    "total_postings": "483"
  },
  {
    "day_of_week": "Wednesday",
    "total_postings": "443"
  },
  {
    "day_of_week": "Thursday",
    "total_postings": "473"
  },
  {
    "day_of_week": "Friday",
    "total_postings": "461"
  },
  {
    "day_of_week": "Saturday",
    "total_postings": "102"
  },
  {
    "day_of_week": "Sunday",
    "total_postings": "6"
  }
]
*/
