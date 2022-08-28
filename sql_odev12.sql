select count(*) from film
where length >
(
select avg(length)from film
);
--------------------------
select count(*) from film
where rental_rate = 
(
select max(rental_rate)from film
);
--------------------------
select * from film
where rental_rate = 
(
select min(rental_rate)from film
) and replacement_cost=
(
select min(replacement_cost) from film
)
--------------------------
select customer.customer_id, first_name, last_name, count(*) from payment
inner join customer on payment.customer_id= customer.customer_id
group by customer.customer_id
order by count(*) desc;

