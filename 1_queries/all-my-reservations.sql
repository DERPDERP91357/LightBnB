SELECT reservations.id, properties.title, cost_per_night, start_date, AVG(ratings) AS average_rating
FROM properties 
JOIN reservations on reservations.property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE property_reviews.guest_id = 1
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;
