-- EX1
SELECT NAME FROM CITY 
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA' 
--EX2
SELECT * FROM CITY
WHERE COUNTRYCODE ='JPN'
--EX3
SELECT CITY, STATE FROM STATION
--EX4
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%' 
-- CÁCH 2 EX4
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou]'
--EX5 
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[aeiou]$'
--EX6
SELECT DISTINCT CITY FROM STATION
WHERE  NOT CITY REGEXP '^[ueoai]'
--EX7
SELECT name FROM Employee
ORDER BY name 
--EX8
SELECT name FROM Employee 
Where salary > 2000 and months < 10 
Order by employee_id 
--EX9
SELECT product_id FROM products 
WHERE low_fats = 'Y' AND recyclable = 'Y'
--EX10
SELECT name FROM Customer
WHERE NOT referee_id = 2 OR referee_id is null
--EX11
SELECT name, population, area FROM World
WHERE area >= 3000000 OR population >= 25000000
--EX12
SELECT DISTINCT author_id AS id FROM Views 
WHERE author_id = viewer_id
ORDER BY author_id
--EX13
SELECT part, assembly_step FROM parts_assembly
WHERE finish_date IS NULL;
--EX14
SELECT * FROM lyft_drivers
WHERE yearly_salary <= 30000 OR yearly_salary >= 70000
--EX15
SELECT advertising_channel FROM uber_advertising
WHERE money_spent > 100000 AND year = 2019
