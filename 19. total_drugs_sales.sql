with cte as (
Select manufacturer,round(sum(total_sales)/1000000.00) as val from pharmacy_sales
group by manufacturer
ORDER BY SUM(total_sales) DESC
)
Select manufacturer,concat('$',val,' million') as sales_mil from cte;

