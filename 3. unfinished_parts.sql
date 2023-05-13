SELECT part, assembly_step FROM parts_assembly
where finish_date is NULL
group by part, assembly_step;