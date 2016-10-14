#JOIN

#Q1
SELECT matchid, player FROM goal 
  WHERE teamid = 'Ger';
  
#Q2
SELECT id,stadium,team1,team2
FROM game
WHERE id = 1012

#Q3
SELECT player, teamid, stadium, mdate
FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'GER';

#Q4
SELECT team1, team2, player
FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%';

#Q5
SELECT player, teamid, coach, gtime
FROM goal JOIN eteam ON teamid=id
WHERE gtime<=10;

#Q6
SELECT mdate, teamname
FROM game JOIN eteam ON (team1 = eteam.id)
WHERE coach = 'Fernando Santos';

#Q7
SELECT player
FROM goal JOIN game ON id=matchid
WHERE stadium = 'National Stadium, Warsaw';

#Q8
SELECT DISTINCT player
FROM game JOIN goal ON matchid=id
WHERE team1='GER' AND team2!='GER' AND teamid!='GER'
   OR team1!='GER' AND team2='GER' AND teamid!='GER';

#Q9
SELECT teamname, count(teamname)
FROM eteam JOIN goal ON id=teamid
GROUP BY teamname
ORDER BY teamname

#Q10
SELECT stadium, count(stadium)
FROM game JOIN goal ON matchid=id
GROUP BY stadium;

#Q11
SELECT matchid,mdate, count(teamid)
FROM game JOIN goal ON matchid = id 
WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid, mdate;

#Q12
SELECT matchid, mdate, count(teamid)
FROM game JOIN goal ON matchid=id
WHERE team1 = 'GER' AND teamid='GER'
   OR team2 = 'GER' AND teamid='GER'
GROUP BY matchid, mdate;

#Q13
#I think this one is bugg as some entries are being ommitted??
SELECT mdate, team1, sum(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
              team2, sum(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
FROM game JOIN goal ON matchid = id
GROUP BY mdate, matchid, team1, team2;