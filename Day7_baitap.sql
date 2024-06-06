--EX1
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name,3),ID
--EX2
SELECT user_id,
CONCAT(UPPER(LEFT(name,1)),LOWER(SUBSTRING (name FROM 2 FOR LENGTH(name)-1))) AS name
FROM Users
ORDER BY user_id
--EX3
SELECT manufacturer,
CONCAT('$',ROUND(SUM(total_sales)/1000000,0),' million') AS sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC
--EX4
SELECT EXTRACT(month FROM submit_date),
product_id AS product,
ROUND(AVG(stars),2) AS avg_stars
FROM reviews
GROUP BY product,EXTRACT(month FROM submit_date)
ORDER BY EXTRACT(month FROM submit_date),product_id
--EX5
SELECT sender_id,
COUNT(content)
FROM messages
WHERE EXTRACT(month FROM sent_date) = 08 AND EXTRACT(year FROM sent_date)=2022
GROUP BY sender_id
ORDER BY COUNT(content) DESC
LIMIT 2
--EX6
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content)>15
--EX7
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27' 
GROUP BY activity_date
--EX8
select count(id) 
from employees
where joining_date between '2022-01-01' and '2022-07-31'
--EX9
select position ('a' IN first_name)
from worker
where first_name = 'Amitah'
--EX10
select title,substring (title from (length(winery)+2) for 4)
from winemag_p2
where country='Macedonia'
