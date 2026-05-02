-- Query file


-- SET 1: Discovery and search (user use cases)
-- Query 1 set 1: find all study spots in a specific city (Fullerton)
SELECT s.spotName, l.StreetAddress, l.City
FROM study_spots s
JOIN Location l ON s.LocationID = l.LocationID
WHERE l.City = 'Fullerton';

-- query 2 set 1: find study spots that offer wifi
SELECT s.spotName
FROM study_spots s
JOIN Study_Spot_Amentity ssa ON s.spot_id = ssa.SpotID
JOIN Amenity a ON ssa.AmentityID = a.AmenityID
WHERE a.AmenityName = 'Wi-Fi';

-- query 3 set 1: identify spots open on a specific day
SELECT s.spotName, h.OpenTime, h.CloseTime
FROM study_spots s
JOIN Hours h ON s.spot_id = h.SpotID
WHERE h.DayOfWeek = 'Monday' AND h.isClosed = FALSE;

-- SET 2: Social and feedback (community use cases)
-- query 1 set 2: calculate avg rating for each study spot
SELECT s.spotName, AVG(r.Rating) AS Average_Rating
FROM study_spots s
JOIN Review r ON s.spot_id = r.SpotID
GROUP BY s.spotName;

-- query 2 set 2: retrieve all reviews for a spot with the reviewer's username
SELECT u.username, r.Rating, r.ReviewText, r.ReviewDate
FROM Review r
JOIN users u ON r.user_id = u.user_id
JOIN study_spots s ON r.SpotID = s.spot_id
WHERE s.spotName = 'Lovetta';

-- query 3 set 2:list all photos uploaded for a specific spot
SELECT p.PhotoURL, p.Caption, p.UploadDate
FROM Photo p
JOIN study_spots s ON p.SpotID = s.spot_id
WHERE s.spotName = 'Pollak Library';