/* 3. We want ot target our inactive users with an email campaign. Find the users who have never posted a photo */

SELECT 
	username,
	COUNT(photos.id) AS num_user_photos
FROM users
	LEFT JOIN photos 
		ON users.id = photos.user_id
WHERE photos.id IS NULL
GROUP BY users.id;
