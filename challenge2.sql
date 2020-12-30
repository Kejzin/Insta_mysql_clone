/* 2. What day of the week do most users regiester on? (Can be important for scheduling an ad campgain) */

SELECT 
	DAYNAME(created_at) AS Day,
	COUNT(*)	    AS registrations
FROM users
	GROUP BY DAYOFWEEK(created_at)
ORDER BY registrations DESC
LIMIT 1;

