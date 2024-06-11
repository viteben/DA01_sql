--EX1
select COUNTRY.Continent, FLOOR(AVG(CITY.Population))
from COUNTRY join CITY on COUNTRY.Code=CITY.CountryCode
group by COUNTRY.Continent
--EX2
SELECT ROUND((SUM(CASE WHEN texts.signup_action = 'Confirmed' THEN 1 END)/CAST(COUNT(texts.signup_action)AS DECIMAL)),2)AS confirm_rate
FROM emails LEFT JOIN texts ON emails.email_id=texts.email_id
--EX3
SELECT 
  b.age_bucket, 
  ROUND((100.0 * SUM(CASE WHEN a.activity_type = 'send' 
      THEN a.time_spent ELSE 0 END) / SUM(CASE WHEN a.activity_type IN ('send','open') THEN a.time_spent ELSE 0 END)),2) AS send_perc,
   ROUND((100.0 * SUM(CASE WHEN a.activity_type = 'open' 
      THEN a.time_spent ELSE 0 END) / SUM(CASE WHEN a.activity_type IN ('send','open') THEN a.time_spent ELSE 0 END)),2) AS open_perc
  FROM activities AS a
INNER JOIN age_breakdown AS b
  ON a.user_id = b.user_id 
GROUP BY b.age_bucket
--EX4
SELECT a.customer_id 
FROM customer_contracts AS a
JOIN products AS b
ON a.product_id = b.product_id
GROUP BY a.customer_id
HAVING COUNT(DISTINCT b.product_category) = 3
--EX5
SELECT man.employee_id,man.name,COUNT(emp.employee_id) AS reports_count,
ROUND(AVG(emp.age)) AS average_age 
FROM Employees AS emp JOIN Employees AS man ON emp.reports_to = man.employee_id
GROUP BY man.employee_id,man.name
ORDER BY man.employee_id
--EX6
SELECT a.product_name, SUM(b.unit) AS unit
FROM Products a JOIN Orders b ON a.product_id=b.product_id 
WHERE EXTRACT(month FROM b.order_date) ='02' 
AND EXTRACT(year FROM b.order_date) ='2020'
GROUP BY a.product_name
HAVING SUM(b.unit) >= 100
--EX7
SELECT a.page_id
FROM pages a LEFT JOIN page_likes b ON a.page_id=b.page_id
WHERE b.user_id IS NULL
ORDER BY a.page_id
