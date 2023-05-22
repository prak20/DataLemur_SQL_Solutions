with cte as (
select employee_id,count(domain) as cnt,sum(years_of_experience) as sm
from employee_expertise 
group by employee_id
order by employee_id
)
Select employee_id  from cte 
where (cnt=1 and sm>=8) or (cnt=2 and sm>=12);