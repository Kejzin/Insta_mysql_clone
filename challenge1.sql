/* 1. Find the 5 oldest users in database */

SELECT 
	username,
	created_at
FROM users
ORDER BY created_at
LIMIT 5;

/* I did exactly as in video! Yea! */
