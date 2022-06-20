-- choosing database
use learning_sql;
-- 1st question: creating matches table
CREATE TABLE matches
(
	id int,
	inning int,
	over1 int,
	ball int,
	batsman varchar(200),
	non_stricker varchar(200),
	bowler varchar(200),
	batsman_runs int,
	extra_runs int,
	is_wicket varchar(50),
	dismissal_kind varchar(100),
	player_dismissed varchar(200),
	fielder varchar(200),
	extras_type varchar(100),
	batting_team varchar(400),
	bowling_team varchar(400)
);
-- 2nd question : crating table deliveries

CREATE TABLE deliveries(
	id int,
    city varchar(200),
    date1 date,
    player_of_match varchar(200),
    venue varchar(200),
    neutral_venue varchar(200),
    team1 varchar(200),
    team2 varchar(200),
    toss_winner varchar(200),
    toss_decision varchar(200),
    winner varchar(200),
    result varchar(50),
    result_margin int,
    eliminator varchar(50),
    method varchar(100),
    umpire1 varchar(200),
    umpire2 varchar(200)
);
select * from 
deliveries 
limit 10;
select count(id) 
from deliveries;
-- 5th question
SELECT * 
FROM matches limit 20;
-- 6th question
select *
from deliveries limit 20;
-- 7th question
SELECT * 
FROM matches
WHERE date1 = '2013-05-02';
-- 8th question
SELECT *
FROM matches
WHERE result = 'runs' and result_margin > 100;
-- 9th question
SELECT *
FROM matches
WHERE result = 'tie';
-- 10th question
SELECT count(city)
FROM matches;

