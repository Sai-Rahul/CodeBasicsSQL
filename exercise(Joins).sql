select m.movie_id, title, budget, revenue, currency, unit
from movies m 
left join financials f
on m.movie_id = f.movie_id

union

select f.movie_id, title, budget, revenue, currency, unit
from movies m 
right join financials f
on m.movie_id = f.movie_id;

select * from languages;
select * from movies;

select m.title, l.name from movies m
join languages l on m.language_id = l.language_id;

select m.title, l.name from movies m
join languages l on m.language_id = l.language_id
where name = 'telugu';



SELECT l.name, 
COUNT(m.movie_id) as no_movies
FROM languages l
LEFT JOIN movies m USING (language_id)        
GROUP BY language_id
	ORDER BY no_movies DESC;