-- select * from datacenters ;
-- select * from forecasted_demand ;

select fd.datacenter_id,abs(d.monthly_capacity-sum(fd.monthly_demand)) as spare_capacity
from datacenters d 
join forecasted_demand fd 
on d.datacenter_id = fd.datacenter_id
group by fd.datacenter_id,d.monthly_capacity
order by fd.datacenter_id,spare_capacity;
