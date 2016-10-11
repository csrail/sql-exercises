#SELECT names

#Q1 Find the country that starts with 'Y':
SELECT name 
FROM world
WHERE name LIKE 'Y%';

#Q2 Find the countries that end with 'y':
SELECT name
FROM world
WHERE name LIKE '%y';

#Q3 Luxemborg has an 'x' - so does another country, list them both:
SELECT name
FROM world
WHERE name LIKE '%x%';

#Q4 Find the countries that end with `land`:
SELECT name
FROM world
WHERE name LIKE '%land';

#Q5 Find the countries that start with 'C' and end in 'ia':
SELECT name
FROM world
WHERE name LIKE 'C%ia';

#Q6 Find the country which has a double 'oo' in it:
SELECT name
FROM world
WHERE name LIKE '%oo%';

#Q7 Find the countries that have three or more 'a' in the name:
SELECT name
FROM world
WHERE name LIKE '%a%a%a%';

#Q8 Find the countries that have 't' as a second character:
SELECT name FROM world
WHERE name LIKE '_t%';

#Q9 Find the countries that have two 'o' characters separated by two others:
SELECT name
FROM world
WHERE name LIKE '%o__o%';

#Q10 Find countries that have exactly four characters:
SELECT name
FROM world
WHERE name LIKE '____';

#Q11 Show all the countries where the capital is named the same:
SELECT capital
FROM world
WHERE name = capital;

#Q12 Find the country where the capital of the country has "City" appended to it:
SELECT name
FROM world
WHERE capital = concat(name, ' City');

#Q13 Find the capital and the name where the capital includes the name of the country:
SELECT capital, name
FROM world
WHERE capital LIKE concat('%', name, '%');

#Q14 Find the name and the capital where the capital is an extension of name of the country:
SELECT name, capital
FROM world
WHERE capital LIKE concat(name, '_%');

#Q15 Show the name and the extension where the capital is an extension of name of the country:
SELECT name, REPLACE(capital, name, '')
FROM world
WHERE capital LIKE concat(name, '_%');