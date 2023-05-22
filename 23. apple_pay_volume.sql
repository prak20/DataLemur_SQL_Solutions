Select merchant_id, 
sum(case when upper(payment_method) = 'APPLE PAY' then transaction_amount else 0 end )
as total_transaction 
from transactions 
group by merchant_id
order by total_transaction desc;