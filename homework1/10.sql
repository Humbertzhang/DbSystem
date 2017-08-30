select zip,count(*) 
from parties 
where zip is not ''
group by zip 
order by count(*) desc 
limit 0,3;
