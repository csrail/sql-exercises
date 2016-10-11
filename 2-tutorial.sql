#SELECT from world

#Q1 Observe the result of running a simple SQL command. 
SELECT name, continent, population
FROM world;

#Q2 Show the name for the countries that have a population of at least 200 million:
SELECT name
FROM world
WHERE population > 200E6;

#Q3 Give the name and the per capita GDP for those countries with a population of at least 200 million:
SELECT name, gdp/population
from world
where population > 200E6;

#Q4 Show the name and population in millions for the countries of the continent 'South America':
SELECT name, population/1000000
FROM world
WHERE continent = 'South America';

#Q5 Show the name and population for France, Germany, Italy:
SELECT name, population
FROM world
WHERE name IN ('France','Germany','Italy');

#Q6 Show the countries which have a name that includes the word 'United' 
SELECT name
FROM world
WHERE name LIKE '%United%';

#Q7 A country is big if it has an area of more than 3 million sq km or
# it has a population of more than 250 million.
# Show the countries that are big by area or big by population. Show name, population and area.
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000;

#Q8  Exclusive OR (XOR). Show the countries that are big by area or big by 
# population but not both. Show name, population and area.
# Australia has a big area but a small population, it should be included.
# China has a big population and big area, it should be excluded.
SELECT name, population, area
FROM world
WHERE (population > 250E6 AND area <> 3E6) XOR (population <> 250E6 AND area > 3E6);

#Q9 For South America show population in millions and GDP in billions both to 2 decimal places.
SELECT name, ROUND(population/1E6, 2), ROUND(GDP/1E9,2)
FROM world
WHERE continent = 'South America';

#Q10 Show per-capita GDP for the trillion dollar countries to the nearest $1000.
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp > 1E12;

#Q11 Show the name - but substitute Australasia for Oceania - for countries beginning with N.
#Typo: it should read `substitute Oceania for Australasia`
SELECT name,
  CASE WHEN continent='Oceania' THEN 'Australasia'
       ELSE continent
  END
FROM world
WHERE name LIKE 'N%';

#Q12 Show the name and the continent - but substitute Eurasia for Europe and Asia; 
#substitute America - for each country in North America or South America or Caribbean. 
#Show countries beginning with A or B
#Typo: it should read `substitute 'Europe' and 'Asia' with 'Eurasia'`
#Typo: it should read `substitute 'America' for the continents of 'North America' or 'South America' or the 'Carribean'`
SELECT name,
 CASE WHEN continent IN ('Europe', 'Asia') THEN 'Eurasia'
      WHEN continent IN ('North America', 'South America', 'Caribbean') THEN 'America'
      ELSE continent
 END
FROM world
WHERE name LIKE 'A%' OR name LIKE 'B%';

