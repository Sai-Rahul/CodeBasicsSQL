select * from moviesdb.movies;
select title, release_year from moviesdb.movies where studio='marvel studios';
select * from moviesdb.movies where title like "%Avenger%";
select release_year from moviesdb.movies where title = 'the godfather';
select distinct studio from moviesdb.movies where industry= 'Bollywood'