#Q1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950
 
#Q2
SELECT winner
FROM nobel
WHERE yr = 1962
  AND subject = 'Literature'
   
#Q3
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

#Q4
SELECT winner
FROM nobel
WHERE subject LIKE '%Peace%'
  AND yr >= 2000;
  
#Q5
SELECT * FROM nobel
WHERE subject = 'Literature'
  AND yr BETWEEN 1980 AND 1989;
  
#Q6
SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter');

#Q7
SELECT winner
FROM nobel
WHERE winner LIKE 'John_%';

#Q8
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Physics' AND yr = 1980
  OR subject = 'Chemistry' AND yr = 1984;
  
#Q9
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 AND subject <> 'Chemistry' AND subject <> 'Medicine';

#10
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Medicine' AND yr < 1910
   OR subject = 'Literature' AND yr >= 2004;

#11
SELECT yr, subject, winner
FROM nobel
WHERE winner = 'PETER GRÜNBERG';

#12
SELECT yr, subject, winner
FROM nobel
WHERE winner = 'EUGENE O\'NEILL';

#13
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC;

#14
SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'), subject, winner;