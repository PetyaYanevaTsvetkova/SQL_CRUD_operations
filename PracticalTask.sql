--Insert only with mandatory fields:
INSERT INTO customer (customer_id, name, email, phone, consent_status, is_profile_active) 	 			 
VALUES 
(5, 'Mike', 'mike@abv.bg', +359888944561, true, true), 
(6, 'Nicol', 'nicol@gmail.com', +356578944561, true, true);

--Insert with all fields:
INSERT INTO customer 
VALUES 
(9, 'Mark', 'maddssrk@av.bg', +3598444561, 30, 'Bulgaria, Sofia, Gorublqne', 
 'Sofia', 359, 'Bulgaria', true, true, DEFAULT,DEFAULT, NULL,
 'Note: Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
 Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,
 when an unknown printer took a galley of type and scrambled it to make a type
 specimen book. It has survived not only five centuries, but also the leap into
 electronic typesetting, remaining essentially unchanged. It was popularised in 
 the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
 and more recently with desktop publishing software like Aldus PageMaker 
 including versions of Lorem Ipsum'), 
 
 (10, 'Majjrk', 'madfjtyjssrk@abv.bg', +3592244561, 45, 'Bulgaria, Sofia, Mladost', 
 'Sofia', 359, 'Bulgaria', true, true, DEFAULT,DEFAULT, NULL,
 'Note: Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
 Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,
 when an unknown printer took a galley of type and scrambled it to make a type
 specimen book. It has survived not only five centuries, but also the leap into
 electronic typesetting, remaining essentially unchanged. It was popularised in 
 the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
 and more recently with desktop publishing software like Aldus PageMaker 
 including versions of Lorem Ipsum');
 
SELECT * FROM customer;

SELECT name, phone 
FROM customer;

SELECT name, address 
FROM customer;

SELECT consent_status, is_profile_active, date_profile_created, date_profile_deactivated, reason_for_deactivation, notes  
FROM customer;

SELECT * FROM customer
WHERE customer_id BETWEEN 5 AND 7;

UPDATE customer 
SET 
phone = +359888888888
WHERE customer_id = 5;

UPDATE customer 
SET 
address = 'Krumovgrad, ul."Kapitan Petko" 7'
WHERE customer_id = 2;

--deactivate account:
UPDATE customer 
SET 
date_profile_deactivated = CURRENT_timestamp, 
is_profile_active = FALSE, 
reason_for_deactivation = 'locked password',
date_profile_created = NULL
WHERE customer_id BETWEEN 4 AND 5;

--activate account:
UPDATE customer 
SET 
date_profile_deactivated = NULL, 
is_profile_active = TRUE, 
reason_for_deactivation = NULL,
date_profile_created = CURRENT_TIMESTAMP
WHERE customer_id IN (2, 3);

DELETE FROM customer WHERE customer_id = 6;