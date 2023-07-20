select * from movies;

select release_year, count(*) as movies_count
from movies
group by release_year
having movies_count>2
order by movies_count desc;

select *, Year(CURDATE())-birth_year as age from actors;
select * from financials;

select * , (revenue-budget) as profit from financials;

select *,
if(currency = 'USD', revenue*80, revenue) AS revenue_inr
from financials;

select distinct unit from financials;

select *,
CASE
WHEN unit = 'Thousands' then revenue/1000
WHEN unit = 'Billions' then revenue*1000
ELSE revenue
END as revenue_mln
from financials;

select * , ((revenue-budget)/budget)*100  as profit_percentage from financials;

