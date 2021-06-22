--1 -
SELECT *
FROM data_analyst_jobs;

--2 -
SELECT * 
FROM data_analyst_jobs
LIMIT 10;

--3a -
SELECT *
FROM data_analyst_jobs
WHERE location='TN';

--3b -
SELECT *
FROM data_analyst_jobs
WHERE location = 'KY' OR location='TN';

--4 -
SELECT location, star_rating
FROM data_analyst_jobs
WHERE location='TN' AND star_rating > 4;

--5 -
SELECT review_count
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

--6 -
SELECT AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
WHERE avg_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;

--7 -
SELECT DISTINCT title
FROM data_analyst_jobs;

--8 -
SELECT DISTINCT title, location
FROM data_analyst_jobs
WHERE location='CA';

--9 -
SELECT AVG(star_rating) AS avg_star, company, location
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company, location
ORDER BY avg_star DESC;

--10 -
SELECT AVG(star_rating) AS avg_star, company
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg_star DESC;


--11 -
SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

--12 -
SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%Analytics%'
GROUP BY title;

-- BONUS

select count(domain) AS count_domain, domain
from data_analyst_jobs
where days_since_posting