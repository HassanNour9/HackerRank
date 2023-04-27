select concat(Name,'(',Substring(Occupation,1,1),')') as subs from OCCUPATIONS
order by Name
select 'There are a total of', count(Name) as Doc,concat(Lower(Occupation),'s.') from OCCUPATIONS
Group by Occupation
order by Doc,Occupation