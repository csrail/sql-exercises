#Q1
SELECT id, title
FROM movie
WHERE yr=1962

#Q2
SELECT yr
FROM movie
WHERE title='Citizen Kane';

#Q3
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'
ORDER By yr;

#Q4
SELECT title
FROM movie
WHERE id IN(11768, 11955, 21191);

#Q5
SELECT id
FROM actor
WHERE name = 'Glenn Close';

#Q6
SELECT id
FROM movie
WHERE title = 'Casablanca';

#Q7
SELECT name
FROM actor JOIN casting ON actor.id = actorid
WHERE movieid=11768

#Q8
SELECT name
FROM actor JOIN casting ON actor.id = actorid
WHERE movieid = (SELECT id FROM movie WHERE title = 'Alien');

#Q8 THE BETTER WAY
SELECT actor.name
FROM actor JOIN casting ON casting.actorid = actor.id
           JOIN movie   ON movie.id = casting.movieid
WHERE movie.title = 'Alien';

#Q9
SELECT title
FROM movie JOIN casting ON movie.id = movieid
WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford');

#Q9 THE BETTER WAY
SELECT movie.title
FROM movie JOIN casting ON casting.movieid = movie.id
           JOIN actor   ON actor.id = casting.actorid
WHERE actor.name = 'Harrison Ford';

#Q10
SELECT title
FROM movie JOIN casting ON movie.id = movieid
WHERE actorid = (SELECT id FROM actor WHERE name = 'Harrison Ford') AND ord != 1;

#Q10 THE BETTER WAY
SELECT movie.title
FROM movie JOIN casting ON casting.movieid = movie.id
           JOIN actor   ON actor.id = casting.actorid
WHERE actor.name = 'Harrison Ford' AND ord != 1;

#Q11
SELECT movie.title, actor.name
FROM movie JOIN casting ON casting.movieid = movie.id
           JOIN actor   ON actor.id = casting.actorid
WHERE movie.yr = 1962 AND casting.ord = 1;

#Q12
SELECT yr,COUNT(title)
FROM movie JOIN casting ON movie.id=movieid
           JOIN actor   ON actorid=actor.id
WHERE name='John Travolta'
GROUP BY yr
HAVING COUNT(title)=(SELECT MAX(c)
                     FROM (SELECT yr,COUNT(title) AS c
                           FROM movie JOIN casting ON movie.id=movieid
                                      JOIN actor   ON actorid=actor.id
                           WHERE name='John Travolta' GROUP BY yr) AS t)

#Q13