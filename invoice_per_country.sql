
select c.country_name,count(i.invoice_number),avg(i.total_price) FROM country c 
JOIN city ci ON c.id = ci.country_id 
JOIN customer cu ON ci.id = cu.city_id
JOIN invoice i ON cu.id = i.customer_id
GROUP BY c.country_name
HAVING avg(i.total_price) > (select avg(total_price) from invoice);
