/* 4. We're running a new contest to see who can get the most likes on a single photo. Who won??!! */

SELECT 
	photos.id AS photo_id,
	photos.image_url,
	COUNT(*) AS num_likes
FROM photos
	LEFT JOIN likes
		ON photos.id = likes.photo_id
GROUP BY photos.id
ORDER BY num_likes DESC
LIMIT 1;
