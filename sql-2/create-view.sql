-- 1)
create view rock as
select track.name as track_name
from track 
join genre on track.genre_id = genre.genre_id
where genre.name = 'Rock';

select * from rock;

-- 2)
