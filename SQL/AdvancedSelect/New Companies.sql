select C.company_code,C.founder,
Count(distinct(lead_manager_code)),
count(distinct(senior_manager_code)),
count(distinct(manager_code)),
count(distinct(employee_code))
from Company C
 join Employee E
on E.company_code=C.company_code
group by C.company_code,founder
order by company_code;