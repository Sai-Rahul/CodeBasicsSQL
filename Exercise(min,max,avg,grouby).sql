select studio,
count(industry) as cnt,
round(avg(imdb_rating),1) as avg_rating
from movies
where studio != " "
group by studio
order by avg_rating desc;

select * from movies;
select count(*) from movies where release_year in (2015,2015,2017,2018,2019,2020,2021,2022);
select count(*) from movies where release_year between 2015 and 2022;

select max(release_year) as Max,
	   min(release_year) as Min
       from movies;
       
select release_year, count(*)
from movies
group by release_year
order by release_year desc;

