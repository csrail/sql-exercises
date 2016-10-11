#SELECT Basics

#Q1 Show the population of Germany:
SELECT population
FROM world
WHERE name = 'Germany';

#Q2 Show the name and population of 'Ireland', 'Iceland' and 'Denmark':
SELECT name, population
FROM world
WHERE name IN ('Ireland', 'Iceland', 'Denmark');

#Q3 Show the country and area for countries with an area between 200,000 and 250,000:
SELECT name, area
FROM world
WHERE area BETWEEN 200000 AND 250000;