**Which batsmen score the fastest in IPL?**

select striker , (sum(runs\_of\_bat)/count(over\_num))\*100 as strike\_rate

from ipl2026 group by striker order by strike\_rate desc;



**Which bowlers are hardest to score against?**

select bowler , sum(runs\_of\_bat)+sum(extras) as Runs\_given , (Round((count(over\_num)/6),2)\*6) as Overs ,

Round((sum(runs\_of\_bat)+sum(extras)/(count(over\_num)/6)),2) as Economy

from ipl2026 group by bowler order by Runs\_given asc;



**Which batsmen hit the most boundaries?**

select striker as batsman ,

sum(case when runs\_of\_bat=4 then 1 else 0 end) as fours ,

sum(case when runs\_of\_bat=6 then 1 else 0 end) as Sixes,

((sum(case when runs\_of\_bat=4 then 1 else 0 end) \*4)+(sum(case when runs\_of\_bat=6 then 1 else 0 end)\*6)) as Boundary\_Runs

from ipl2026 group by striker order by Sixes desc;



**Which bowlers take wickets most frequently?**

select bowler Bowler\_Name ,(count(bowler)) as Balls ,

sum(case when player\_dismissed like "%\_%" then 1 else 0 end) as Wickets ,

((count(bowler))/sum(case when player\_dismissed like "%\_%" then 1 else 0 end)) as Bowling\_Strike\_Rate

from ipl2026 group by bowler order by wickets desc;



**Who performs best in Powerplay?**

select striker , sum(runs\_of\_bat) Powerplay\_Runs ,

Round((sum(runs\_of\_bat)/count(over\_num))\*100,2) as Strike\_Rate

from ipl2026 where over\_num<=5.6 group by striker order by powerplay\_runs desc;



**Which bowlers dominate Death Overs?**

select bowler  ,

sum(runs\_of\_bat+extras) as Runs\_Conceded ,

count(\*)/6.0 as Overs\_Bowled ,

round(sum(runs\_of\_bat+extras)/ (count(\*)/6.0),2) as Economy

from ipl2026 where over\_num between 15.6 and 19.6 group by bowler order by runs\_conceded desc;



**Which venues produce highest scores?**

select venue  ,

round(avg(innings\_score),2) as avg\_innings\_score

from (select venue,match\_id,inning, sum(runs\_of\_bat+extras) as innings\_score from ipl2026 group by venue,match\_id,inning) t

group by venue order by avg\_innings\_score desc;



**Which batting teams score fastest?**

select batting\_team Team ,

sum(runs\_of\_bat) Total\_Runs ,

round(((sum(case when over\_num>0 then 1 else 0 end))/6),0) Total\_Over,

round(((sum(runs\_of\_bat))/(round(((sum(case when over\_num>0 then 1 else 0 end))/6),0))),2) Run\_Rate

from ipl2026 group by batting\_team order by Run\_rate desc;



**Which bowlers dismiss the widest variety of batsmen?**

select bowler ,

count(distinct player\_dismissed) Unique\_Batsman  ,

count(player\_dismissed) Total\_Batsman

from ipl2026 where player\_dismissed is not null and player\_dismissed != ''

group by bowler order by Total\_Batsman desc;



**Which batsmen are most dependent on boundaries?**

select striker ,

sum(runs\_of\_bat) Total\_Runs ,

sum(case when runs\_of\_bat=4 then 1 else 0 end)\*4 + sum(case when runs\_of\_bat=6 then 1 else 0 end)\*6  Boundary\_Runs ,

round(((sum(case when runs\_of\_bat=4 then 1 else 0 end)\*4 + sum(case when runs\_of\_bat=6 then 1 else 0 end)\*6)/(sum(runs\_of\_bat)))\*100,2) Boundary\_Perceentage

from ipl2026 group by striker order by Total\_Runs desc;



**Which batsmen handle specific bowlers best?**

select striker ,

bowler ,

sum(runs\_of\_bat) Runs,

round((count(\*)),0) balls ,

round(sum(runs\_of\_bat)\*100/count(\*),2) Strike\_Rate ,

count(case when player\_dismissed= striker then 1 end) Dismissed

from ipl2026

group by striker , bowler order by Runs desc;

