--EX1
SELECT DISTINCT CITY FROM STATION
WHERE ID%2 = 0
--EX2
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION
--EX4
SELECT ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences) AS DECIMAL),1) AS mean
FROM items_per_order
--EX5
SELECT candidate_id FROM candidates
WHERE skill IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill)=3
ORDER BY candidate_id
--EX6
SELECT user_id,
DATE(MAX(post_date)) - DATE(MIN(post_date)) AS days_between 
FROM posts
WHERE post_date >= '01/01/2021' AND post_date < '01/01/2022'
GROUP BY user_id
HAVING COUNT(post_id) >= 2
--EX7
SELECT card_name,
MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY  card_name
ORDER BY card_name DESC
--EX8
SELECT manufacturer,
COUNT (drug) AS drug_count,
ABS(SUM(total_sales - cogs)) AS total_loss
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY manufacturer
ORDER BY ABS(SUM(total_sales - cogs))  DESC
--EX9
SELECT * FROM Cinema
WHERE id%2 != 0 
AND description != 'boring'
ORDER BY rating DESC
--EX10
SELECT teacher_id,
count ( DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id
--EX11
SELECT user_id,
count (follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id
--EX12
SELECT class FROM Courses
GROUP BY class
HAVING count(class) >=5
