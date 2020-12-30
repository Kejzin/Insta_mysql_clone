/* 4. We're running a new contest to see who can get the most likes on a single photo. Who won??!! */

SELECT 
	photos.id AS photo_id,
	photos.image_url,
	users.username,
	COUNT(*) AS num_likes
FROM photos
	JOIN likes -- Left join is not necessary because there we are not looking for photos without likes
		ON photos.id = likes.photo_id
	JOIN users 
		ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY num_likes DESC
LIMIT 1;
