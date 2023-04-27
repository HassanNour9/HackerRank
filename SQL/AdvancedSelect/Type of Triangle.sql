select case 
when A+B<=C OR A+C<=B OR B+C<=A THEN 'Not A Triangle'
when A=B AND B=C THEN 'Equilateral'
when A=B OR A=C OR B=C then 'Isosceles'
else 'Scalene'
end
from TRIANGLES;