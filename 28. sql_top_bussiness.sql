with cte as(
SELECT count(business_id) as bcount FROM reviews
where review_stars in(4,5)
)
select bcount as bussiness_count,
round(100.0*bcount/(select count(business_id) from reviews),0) as top_rated_pct 
from cte;