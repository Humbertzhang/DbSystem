select case_id,filing_date 
from cases 
where filing_date like '%195%' 
order by filing_date asc
limit 0,3;
