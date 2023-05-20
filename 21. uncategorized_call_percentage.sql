Select round(100.0*un_categorised/(Select count(*) FROM callers),1) as uncategorised_call_pct from (
Select count(case_id) as un_categorised
from callers
where call_category ='n/a' or call_category is NULL) x
group by x.un_categorised;