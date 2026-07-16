select *
from world_cup_matches 

select *
from world_cup_players 
where "RoundID" = '201' or "MatchID" = '1096'

select "Winner" , count(*) , AVG("GoalsScored")
from world_cups 
group by "Winner" 


with world_cup_total as (select wc."Year" , wc."Attendance" , count(*) 
from world_cups wc
left join world_cup_matches wcm 
on wc."Year" = wcm."Year" 
full outer join world_cup_players wcp 
on wcm."MatchID" = wcp."MatchID" 
group by wc. "Year" , wc. "Attendance" ) , 

world_cup_filter as (select "Year" from world_cup_total)


select *
from world_cup_filter

--Using a CTE, calculate how many times each country 
--has won the World Cup. Show only countries that have won more than once,
--ordered from most wins to least wins.


select wc."Runners-Up" , count(*)
from world_cups wc 
group by wc."Runners-Up" 
having count(*) >1

--Using a CTE, calculate the total number of World Cup wins for each country,
--then show only the countries whose total wins are greater than the average number of 
--wins across all winning countries.

with table_1 as (select wc."Winner" , count(*) as champions
from world_cups wc 
group by wc."Winner") ,

table_2 as (select avg(champions)
from table_1 )
select *
from table_2



select "RoundID" , "MatchID"
from world_cup_players 
group by "RoundID" , "MatchID"
having "RoundID" = '201' or "MatchID" = '1096'