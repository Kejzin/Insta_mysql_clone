-- 7. Find a bot! users who have liked every single photo
SELECT 
	username,
	COUNT(*) AS likes
FROM users 
	LEFT JOIN likes 
	ON likes.user_id = users.id
-- WHERE likes=(SELECT COUNT(*) FROM photos)
GROUP BY user_id
HAVING likes = (SELECT COUNT(*) FROM photos);
-- HAVING WORKS while WHERE don't because WHERE works before group by
