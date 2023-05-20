with cte as (
Select policy_holder_id,count(case_id) as count_caller from callers
group by policy_holder_id
order by policy_holder_id
)
select sum(case when count_caller>2 then 1 else 0 end) as member_count from cte;

-- Another Approach -------------------------------

-- with cte as (
-- Select policy_holder_id,count(case_id) as count_caller from callers
-- group by policy_holder_id
-- order by policy_holder_id
-- )
-- select count(policy_holder_id) as member_count  
-- from cte 
-- where count_caller>2 ;