-- 6. Find the most popular hashtags
SELECT 
	tag_name,
	tag_id,
	COUNT(*) AS times_used
FROM photo_tags 
JOIN tags
	ON tags.id = photo_tags.tag_id
GROUP BY tag_id
ORDER BY times_used DESC
LIMIT 1;
