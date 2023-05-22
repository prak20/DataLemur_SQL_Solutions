-- select * from transactions;

-- Using window Functions
Select x.customer_id,x.purchase_amount as most_expensive_purchase from (
Select customer_id,purchase_amount,RANK() over(partition by customer_id order by purchase_amount desc) as rnk 
from transactions 
) x 
where x.rnk=1
order by x.purchase_amount desc;

-- Using normal Group by Function

Select customer_id,max(purchase_amount) as purchase_amount from transactions group by customer_id order by 2 desc;