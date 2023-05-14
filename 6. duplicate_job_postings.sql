SELECT count(distinct(a.company_id)) as duplicate_companies FROM job_listings a join job_listings b on a.company_id = b.company_id
where a.title=b.title and a.job_id <> b.job_id;
