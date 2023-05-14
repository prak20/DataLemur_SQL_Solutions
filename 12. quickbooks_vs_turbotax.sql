select 
sum(case when product like '%TurboTax%' then 1 else 0 end) as turbotax_total,
sum(case when product like '%QuickBooks%' then 1 else 0 end) as quickbooks_total
FROM filed_taxes;