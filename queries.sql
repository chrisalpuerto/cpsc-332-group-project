-- queries.sql: all SQL queries for CPSC 332 Group Project, organized by use case
-- AUTHORS:
-- Chris Alpuerto, Ananya Karthi, Jairo Santos, Adonay Yonnas


-- SET 1: Discovery and search (user use cases)
-- Query 1 set 1: find all study spots in a specific city (Fullerton)
SELECT s.spotName, l.StreetAddress, l.City
FROM StudySpot s
JOIN Location l ON s.LocationID = l.LocationID
WHERE l.City = 'Fullerton';

-- query 2 set 1: find study spots that offer wifi
SELECT s.spotName
FROM StudySpot s
JOIN Study_Spot_Amenity ssa ON s.SpotID = ssa.SpotID
JOIN Amenity a ON ssa.AmenityID = a.AmenityID
WHERE a.AmenityName = 'Wi-Fi';

-- query 3 set 1: identify spots open on a specific day
SELECT s.spotName, h.OpenTime, h.CloseTime
FROM StudySpot s
JOIN Hours h ON s.SpotID = h.SpotID
WHERE h.DayOfWeek = 'Monday' AND h.isClosed = FALSE;

-- SET 2: Social and feedback (community use cases)
-- query 1 set 2: calculate avg rating for each study spot
SELECT s.spotName, AVG(r.Rating) AS Average_Rating
FROM StudySpot s
JOIN Review r ON s.SpotID = r.SpotID
GROUP BY s.spotName;

-- query 2 set 2: retrieve all reviews for a spot with the reviewer's username
SELECT u.username, r.Rating, r.ReviewText, r.ReviewDate
FROM Review r
JOIN users u ON r.userID = u.user_id
JOIN StudySpot s ON r.SpotID = s.SpotID
WHERE s.SpotName = 'Lovetta';

    -- query 3 set 2:list all photos uploaded for a specific spot
SELECT p.PhotoURL, p.Caption, p.UploadDate
FROM Photo p
JOIN StudySpot s ON p.SpotID = s.SpotID
WHERE s.SpotName = 'Pollak Library';