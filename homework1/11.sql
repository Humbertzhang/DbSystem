with
t1(name, allcases) as 
(
    select name, count(*)
    from attorneys join cases using (case_id)
    group by name
),
t2(name, woncases) as
(
    select name, count(disposition)
    from attorneys join cases using (case_id)
    where disposition like 'Not Guilty'
    group by name
)
select name, t1.allcases, t2.woncases*100.0/t1.allcases
from t1 join t2 using(name)
where t1.allcases > 100
order by t2.woncases*100.0/t1.allcases desc
limit 5;
