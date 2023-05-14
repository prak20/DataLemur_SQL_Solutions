with cte as (
Select sender_id,count(message_id) as message_count from messages
where sent_date between '08/01/2022' and '08/31/2022'
group by sender_id
order by 2 DESC
)
Select sender_id,message_count from cte
limit 2