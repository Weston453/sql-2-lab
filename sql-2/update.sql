-- 1)
UPDATE customer 
Set fax = null

-- 2)
UPDATE customer 
SET company = 'Self'
WHERE company is null;

-- 3)
update customer 
set last_name = 'Thompson'
where last_name = 'Barnett'

-- 4)
update customer 
set support_rep_id = 4
where email = 'luisrojas@yahoo.cl'

-- 5)
update track 
set composer = 'the darkness around us'
where genre_id = (select genre_id from genre where name = 'Metal')
and composer is null;