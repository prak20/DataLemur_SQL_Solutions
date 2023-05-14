with cte as (
Select account_id, 
sum(case when transaction_type='Deposit' then amount else 0 end) as deposit,
sum(case when transaction_type='Withdrawal' then amount else 0 end) as Withdrawal
from transactions
group by account_id
)
Select account_id,abs(deposit-Withdrawal) as final_balance from cte;