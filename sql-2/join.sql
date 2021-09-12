-- 1)
select * from invoice_line
where invoice_line.unit_price > '0.99';

-- 2)
select invoice.invoice_date, customer.first_name, customer.last_name,invoice.total
from invoice 
join customer
on invoice.customer_id = customer.customer_id

-- 3)
select customer.first_name as customer_first_name, customer.last_name as customer_last_name, employee.first_name, employee.last_name
from customer
join employee
on employee.employee_id = customer.support_rep_id; 

-- 4)
select album.title, artist.name
from album
join artist
on album.artist_id = artist.artist_id;

-- 5)
select playlist_track.track_id, playlist.name
from playlist_track
join playlist
on playlist_track.playlist_id = playlist.playlist_id
where playlist.name = 'Music';

-- 6)
select track.name, playlist_track.playlist_id
from track
join playlist_track
on track.track_id = playlist_track.track_id
where playlist_id = 5;

-- 7)
select track.name as track, playlist.name as playlist
from playlist_track 
join track on track.track_id = playlist_track.track_id
join playlist on playlist_track.playlist_id = playlist.playlist_id

-- 8)
select track.name as track, album.title as album, genre.name as genre
from track
join album on album.album_id = track.album_id
join genre on genre.genre_id = track.genre_id
where genre.genre_id = 4

