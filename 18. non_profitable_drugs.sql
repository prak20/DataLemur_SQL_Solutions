SELECT manufacturer,count(*) as drug_count,sum(abs(total_sales - cogs)) as total_loss FROM pharmacy_sales
where total_sales - cogs < 0
group by manufacturer
order by 3 desc;