select * from invoice_line
where invoice_line.unit_price > '0.99';

select invoice.invoice_date, customer.first_name, customer.last_name,invoice.total
from invoice 
join customer
on invoice.customer_id = customer.customer_id

select customer.first_name as customer_first_name, customer.last_name as customer_last_name, employee.first_name, employee.last_name
from customer
join employee
on employee.employee_id = customer.support_rep_id; 

select album.title, artist.name
from album
join artist
on album.artist_id = artist.artist_id;

select playlist_track.track_id, playlist.name
from playlist_track
join playlist
on playlist_track.playlist_id = playlist.playlist_id
where playlist.name = 'Music';

select track.name, playlist_track.playlist_id
from track
join playlist_track
on track.track_id = playlist_track.track_id
where playlist_id = 5;
