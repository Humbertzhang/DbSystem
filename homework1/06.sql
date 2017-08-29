select (select count(*) from cases where status like 'Case Closed Statistically')*100.0/(select count(*) from cases);

