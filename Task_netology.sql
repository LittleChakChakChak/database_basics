-- Какое количество платежей было совершено?
select count(*) 
from public.orders o 

-- Какое количество товаров находится в категории “Игрушки”?
select count(*)
from public.product p  
where p.category_id = 62 


-- В какой категории находится больше всего товаров?
select c.category, count(*)
from public.product p 
join public.category c on c.category_id  = p.category_id 
group by c.category
order by count(*) desc


-- Сколько “Черепах” купила Williams Linda?
select sum(opl.amount)
from public.customer c  
join public.orders o on o.customer_id  = c.customer_id 
join public.order_product_list opl on opl.order_id = o.order_id 
join public.product p on p.product_id = opl.product_id 
where concat(c.last_name, ' ' ,c.first_name) = 'Williams Linda' and p.product  = 'Черепаха'

