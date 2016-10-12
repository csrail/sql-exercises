#SELECT in SELECT

#Q1
SELECT name FROM world
WHERE population >
  (SELECT population FROM world
  WHERE name='Russia');

#Q2
SELECT name FROM world
 WHERE continent = 'Europe' and gdp/population >
   (SELECT gdp/population FROM world
    WHERE name='United Kingdom');
    
#Q3
SELECT name, continent
FROM world
WHERE continent IN('South America', 'Oceania')
ORDER BY name;

#Q4
SELECT name, population FROM world
  WHERE population >
    (SELECT population FROM world WHERE name = 'Canada')
  AND population <
    (SELECT population FROM world WHERE name = 'Poland');

#Q5
SELECT name, CONCAT(ROUND(population /
  (SELECT population FROM world
   WHERE name = 'Germany')*100, 0), '%')
FROM world
WHERE continent = 'Europe';

#Q6
SELECT name
FROM world
WHERE gdp > ALL(SELECT gdp
                FROM world
                WHERE gdp>0 AND continent = 'Europe');

#Q7
SELECT continent, name, area
FROM world x
WHERE area >= ALL (SELECT area
                   FROM world y
                   WHERE y.continent=x.continent
                   AND area>0)
                   
#Q8
SELECT continent, name
FROM world x
WHERE name <= ALL (SELECT name 
                   FROM world y 
                   WHERE x.continent = y.continent);