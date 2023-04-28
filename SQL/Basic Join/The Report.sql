select 
case 
when Grades.Grade<8 then 'NULL'
else Students.Name 
end,
Grades.Grade,Students.Marks 
from Students,Grades
where Students.Marks Between Min_Mark AND Max_Mark
order by Grades.Grade Desc, Students.Name Asc;