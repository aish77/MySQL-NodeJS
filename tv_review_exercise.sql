select title, rating from series
Join reviews
on
series.id = reviews.series_id;

select title, AVG(rating) from series
Join reviews
on
series.id = reviews.series_id
GROUP BY title
order by rating;


select first_name, last_name, rating from reviewers
join reviews
on 
reviewers.id = reviewer_id;



select title as unreviewed_series, rating from series
left join reviews
on 
series.id = series_id
where rating IS NULL;

select genre, AVG(rating) from series
JOIN reviews
on
series.id = reviews.series_id
group by genre;




select first_name, last_name, COUNT(rating) as COUNT , IFNULL(MIN(rating), 0) as MIN, IFNULL(MAX(rating),0) as MAX, IFNULL(AVG(rating), 0) as AVG, 
CASE
WHEN COUNT(rating) = 0 THEN 'INACTIVE'
ELSE 'ACTIVE'
END AS 'STATUS'
from reviewers
LEFT JOIN reviews
on
reviewers.id = reviews.reviewer_id
group by reviewers.id;


select title, rating, concat(first_name, last_name) as reviewer from reviews
join series
on
reviews.series_id = series.id
join reviewers
on
reviews.reviewer_id = reviewers.id
order by title;


  







