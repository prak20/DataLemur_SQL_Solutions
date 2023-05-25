-- Select * from ad_campaigns;

Select advertiser_id, round((sum(revenue)/sum(spend))::Decimal,2) as ROAS 
from ad_campaigns 
group by advertiser_id
order by advertiser_id