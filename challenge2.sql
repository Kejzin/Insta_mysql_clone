/* 2. What day of the week do most users regiester on? (Can be important for scheduling an ad campgain) */

SELECT 
	DAYNAME(created_at) AS Day,
	COUNT(*)	    AS registrations
FROM users
	GROUP BY DAYOFWEEK(created_at)
ORDER BY registrations DESC
LIMIT 1;

/* It is as in video BUT there are 2 days that has 16 registrations. You can Limit it to 1 or 2, but if you limit it to 1 you will miss "true" answer. Maybe thee is a solution to make some "Find how many days has the same amount as that LIMIT 1 day and display all that has the same amount of registrations" but ismay be to advanced at the moment" */

