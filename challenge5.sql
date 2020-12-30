/* Our investors want to know... How many times does the average user post (photos)? */

SELECT 
	(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users); -- yeah that subqueries
