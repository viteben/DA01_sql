
select  country||','|| city, SUM(amount) from country a join city b on a.country_id=b.country_id
                        join address c on b.city_id=c.city_id
                        join customer d on c.address_id=d.address_id
                        join payment e on d.customer_id=e.customer_id
group by e.customer_id,d.address_id,b.city_id,a.country_id
order by sum(amount) 
