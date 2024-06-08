--EX1
SELECT  
     SUM(CASE WHEN device_type IN ('tablet','phone') THEN '1'
         ELSE 0
     END) mobile_views,
     SUM(CASE WHEN device_type = 'laptop' THEN '1'
         ELSE 0
     END) laptop_views
  FROM viewership
--EX2
select x,y,z,
case when (x+y>z and x+z>y and y+z>x) then 'Yes'
else 'No' end triangle
from Triangle
--EX3
SELECT
 ROUND((100.0*COUNT(CASE WHEN call_category = 'n/a' or call_category IS NULL THEN 1 END)/COUNT(*)),1)
FROM callers
--EX4
SELECT name FROM Customer WHERE referee_id !=2 or referee_id is null
--EX5
select survived,
sum(case when pclass = 1 then 1 end) first_class,
sum(case when pclass = 2 then 1 end) second_class,
sum(case when pclass = 3 then 1 end) third_class
from titanic
group by survived
