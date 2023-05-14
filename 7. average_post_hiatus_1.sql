with cte as (
SELECT
user_id,
DATE_PART ('day', MAX(post_date) - MIN(post_date)) AS days_between
 
FROM posts
WHERE post_date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY user_id
HAVING COUNT(user_id) > 1
)
Select * from cte
ORDER BY user_id
;

