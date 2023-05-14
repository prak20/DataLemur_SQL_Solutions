SELECT date_part('month',submit_date) as mth,product_id,ROUND(AVG(stars),2) as avg_stars 
FROM reviews
group by mth,product_id
order by mth,product_id
;