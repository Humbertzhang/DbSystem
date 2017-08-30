select name,count(*) 
from ( select * from parties join cases using (case_id)) 
where type like 'Defendant' and name is not '' 
group by name 
order by count(*) desc 
limit 0,3;
