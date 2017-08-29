 select name,count(*) from parties where type like 'Defendant' and name is not '' group by name order by count(*) desc limit 0,3;

