-- Select * from personal_profiles;
-- Select * from company_pages;

Select distinct p.profile_id from personal_profiles p
join company_pages cp on p.employer_id = cp.company_id
where p.followers>cp.followers
order by p.profile_id;