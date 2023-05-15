with cte as (
SELECT
app_id,sum(case when event_type='impression' then 1 else 0 end) as no_imp,
sum(case when event_type='click' then 1 else 0 end) as no_clicks
from events
where date_part('year',timestamp)=2022
group by app_id
)
Select app_id, round(100.00*no_clicks/no_imp,2) as ctr from cte;