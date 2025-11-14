-- Question:- What are the top paying data  jobs in the database?
--     - Identify the top 10 highest paying data analyst jobs based on remote work.
--     - focuses on job postings with specified salaries (not null)
--     - Why? highlight the top-paying opportunity for data analyst 

--SQL 
SELECT job_id,name AS company_name, job_title, job_location, job_schedule_type, salary_year_avg, job_posted_date
 FROM job_postings_fact 
 LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
 WHERE job_title LIKE '%Data Analyst%' 
 AND job_location = 'Anywhere'
 AND salary_year_avg IS NOT NULL
 ORDER BY salary_year_avg DESC
 LIMIT 10;
