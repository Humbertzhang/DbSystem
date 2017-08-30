select count(*),substr(filing_date,1,3) || '0s' 
from cases 
where filing_date is not '' 
group by (substr(filing_date,1,3) || '0s') 
order by count(*) desc 
limit 0,3;
