select hack_id,hack_name,sum(max_score) as sum_max
from(
select S.hacker_id as hack_id ,H.name as hack_name,max(S.score) as max_score from Hackers H join Submissions S 
on H.hacker_id=S.hacker_id
group by S.hacker_id,H.name,S.challenge_id) as new_tab
group by hack_id,hack_name
having sum(max_score) >0
order by sum_max desc ,hack_id asc;