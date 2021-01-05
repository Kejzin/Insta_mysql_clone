-- 7. Find a bot! users who have liked every single photo
SELECT 
	likes.user_id,
	COUNT(*) AS likes
FROM photos 
	LEFT JOIN likes 
	ON likes.photo_id = photos.id
-- WHERE likes=(SELECT COUNT(*) FROM photos)
GROUP BY user_id;
-- ORDER BY likes DESC;
