
-- insert.sql - all insert commands for CPSC 332 Group Project, including sample data for testing
-- AUTHORS:



INSERT INTO users (user_id, username, email, first_name, last_name, join_date) VALUES
(1, 'study_pro', 'ananya.k@email.com', 'Ananya', 'Karthi', '2026-01-15'),
(2, 'coffee_lover', 'jairo.s@email.com', 'Jairo', 'Santos', '2026-02-01'),
(3, 'lib_finatic', 'adonay.y@email.com', 'Adonay', 'Yonnas', '2026-02-10'),
(4, 'study_nerd', 'chris.a@email.com', 'Chris', 'Alpuerto', '2026-02-15');

INSERT INTO Location (LocationID, Latitude, Longitude, StreetAddress, City, State, ZipCode) VALUES
('LOC001', '33.8823', '-117.8851', '800 N State College Blvd', 'Fullerton', 'CA', 92831),
('LOC002', '33.8704', '-117.9242', '123 Brew Lane', 'Fullerton', 'CA', 92832),
('LOC003', '34.0522', '-118.2437', '456 Library Way', 'Los Angeles', 'CA', 90012);

INSERT INTO Category (CategoryID, CategoryName) VALUES
('CAT01', 'Cafe'),
('CAT02', 'Library'),
('CAT03', 'Restaurant');

INSERT INTO Amenity (AmenityID, AmenityName) VALUES
('AMEN01', 'Wi-Fi'),
('AMEN02', 'Power Outlets'),
('AMEN03', 'Outdoor Seating'),
('AMEN04', 'Restrooms');

INSERT INTO StudySpot (SpotID, SpotName, Description, Website, PhoneNum, PriceLevel, CategoryID, LocationID) VALUES
('SPOT01', 'Titan Student Union', 'Central hub at CSUF with plenty of tables.', 'fullerton.edu/tsu', 7142782011, 1.0, 'CAT02', 'LOC001'),
('SPOT02', 'The Daily Grind', 'Cozy local cafe with great espresso.', 'dailygrindcafe.com', 7145550199, 2.0, 'CAT01', 'LOC002'),
('SPOT03', 'Central Library', 'Quiet atmosphere perfect for deep focus.', 'lapl.org', 2135550100, 0.0, 'CAT02', 'LOC003');

INSERT INTO Hours (HoursID, SpotID, DayOfWeek, OpenTime, CloseTime, IsClosed) VALUES
('H001', 'SPOT01', 'Monday', '07:00:00', '22:00:00', FALSE),
('H002', 'SPOT01', 'Sunday', '00:00:00', '00:00:00', TRUE),
('H003', 'SPOT02', 'Monday', '06:00:00', '18:00:00', FALSE);

-- Ratings are on a scale of 1-10 
INSERT INTO Review (ReviewID, UserID, SpotID, Rating, ReviewText, ReviewDate, NoiseLevel, WifiQuality, OutletAvailable) VALUES
('REV01', 1, 'SPOT01', 8, 'Great spot, but can get noisy during lunch.', '2024-03-01', 7, 'Excellent', TRUE),
('REV02', 2, 'SPOT02', 9, 'Best lattes in town and very reliable Wi-Fi.', '2024-03-05', 3, 'High Speed', TRUE),
('REV03', 3, 'SPOT03', 10, 'Silent and peaceful.', '2024-03-10', 1, 'Average', FALSE);

INSERT INTO Photo (PhotoID, SpotID, PhotoURL, UploadDate, Caption) VALUES
('PH01', 'SPOT01', 'http://images.com/tsu_interior.jpg', '2024-03-01', 'Main seating area'),
('PH02', 'SPOT02', 'http://images.com/coffee_corner.jpg', '2024-03-05', 'My favorite corner booth');

INSERT INTO Study_Spot_Amenity (SpotID, AmenityID) VALUES
('SPOT01', 'AMEN01'), -- TSU has Wi-Fi
('SPOT01', 'AMEN02'), -- TSU has Outlets
('SPOT02', 'AMEN01'), -- Cafe has Wi-Fi
('SPOT02', 'AMEN03'), -- Cafe has Outdoor Seating
('SPOT03', 'AMEN04'); -- Library has Restrooms