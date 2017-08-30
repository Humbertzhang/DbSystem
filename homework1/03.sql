select violation_county,count(*)
from (select * from cases join charges using (case_id))
where description like '%RECKLESS%' and violation_county is not ''
group by violation_county 
order by count(*) desc 
limit 0,3;
