/* 3. We want ot target our inactive users with an email campaign. Find the users who have never posted a photo */

SELECT 
	username 
FROM users
	LEFT JOIN photos 
		ON photos.user_id = users.id
GROUP BY users.id;
