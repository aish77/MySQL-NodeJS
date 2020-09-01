SELECT 
username, DATE_FORMAT(created_at, "%W") as "DAY OF WEEK", COUNT(DATE_FORMAT(created_at, "%W")) AS COUNT
FROM users
GROUP BY DATE_FORMAT(created_at, "%W");


SELECT 
username, DATE_FORMAT(created_at, "%W") as weekday, COUNT(1) AS COUNT
FROM users
GROUP BY weekday;



SELECT 
username, image_url
FROM users
LEFT JOIN photos
ON
users.id = photos.user_id
where image_url IS NULL;

// most popular post image created
SELECT username, count(*) as total 
FROM photos
JOIN users
ON photos.user_id = users.id
JOIN likes
ON photos.id = likes.photo_id
group by photos.id
order by total desc;
-- limit 1;



SELECT username, count(*) as total 
FROM likes
JOIN users
ON likes.user_id = users.id
JOIN photos
ON photos.id = likes.photo_id
group by photos.id
order by total desc;
-- limit 1;


select username, avg(users.id) as average
from photos
join users
on users.id = photos.user_id
group by users.id;

-- most popular hastag used query
select tag_name, count(*) as count 
from tags
join photo_tags
on
photo_tags.tag_id = tags.id
group by tags.id
order by count desc
limit 5; 

-- most popular hastag used query
select tags.tag_name, count(*) as count 
from photo_tags
join tags
on
photo_tags.tag_id = tags.id
group by tags.id
order by count desc
limit 5; 






