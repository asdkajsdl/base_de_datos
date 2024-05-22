SELECT address_number, address_street_name FROM person
WHERE address_street_name like 'Franklin Ave'
ORDER by address_number ASC
limit 1 offset 1

SELECT membership_status FROM get_fit_now_member

SELECT DISTINCT description,city FROM crime_scene_report
ORDER by city ASC