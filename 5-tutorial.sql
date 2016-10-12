#SUM and COUNT

#Q1
SELECT sUM(population)
FROM world;

#Q2
SELECT DISTINCT continent
FROM world;

#Q3
SELECT sum(gdp)
FROM world
WHERE continent = 'Africa';

#Q4
SELECT count(name)
FROM world
WHERE area >= 1E6;

#Q5
SELECT sum(population)
FROM world
WHERE name IN('France','Germany','Spain');

#Q6
SELECT continent, count(name)
FROM world
GROUP BY continent;

#Q7
SELECT continent, count(name)
FROM world
WHERE population >= 10E6
GROUP BY continent;

#Q8
SELECT DISTINCT continent
FROM world x
WHERE 100E6 <= ALL (SELECT sum(population)
                    FROM world y
                    WHERE y.continent=x.continent
                    AND population>0);