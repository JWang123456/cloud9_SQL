-- 1. Finding 5 oldest users

SELECT * 
FROM users
ORDER BY created_at
LIMIT 5;

-- 2. Most Popular Registration Date

SELECT
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total;
    
    
SELECT 
    users.id,
    username,
    user_id
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE user_id IS NULL;

SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

SELECT 
    (SELECT Count(*) FROM   photos) / (SELECT Count(*) FROM   users) 
    AS avg; 