with cte as (
Select *  from trades t join users u on t.user_id = u.user_id
)
Select city,count(*) from cte
where status='Completed'
group by city
order by 2 desc
limit 3