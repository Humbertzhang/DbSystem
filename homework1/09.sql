with
t1(race, disposition) as 
(
    select race, disposition
    from parties join cases using (case_id)
    where race in ('African American', 'Caucasian') 
    and disposition in ('Guilty','Not Guilty')
),
t2(race, num) as
(
    select race,count(*)
    from parties join cases using (case_id)
    where race in ('African American', 'Caucasian') 
    and disposition in ('Guilty','Not Guilty')
    group by race
)
select race, disposition, count(disposition)*100.0/num
from t1 join t2 using (race)
group by race,disposition;
