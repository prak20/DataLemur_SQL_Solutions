select user_id,count(distinct(product_id)) as product_num from user_transactions 
group by user_id
having sum(spend)>=1000
order by product_num desc,sum(spend) desc
limit 3;