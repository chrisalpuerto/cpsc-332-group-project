
-- insert.sql - all insert commands for CPSC 332 Group Project, including sample data for testing
-- AUTHORS:
-- Chris Alpuerto, Ananya Karthi, Adonay Yonnas, Jairo Santos



INSERT INTO users (user_id, username, email, first_name, last_name, join_date) VALUES
(1, 'study_pro', 'ananya.k@email.com', 'Ananya', 'Karthi', '2026-01-15'),
(2, 'coffee_lover', 'jairo.s@email.com', 'Jairo', 'Santos', '2026-02-01'),
(3, 'lib_finatic', 'adonay.y@email.com', 'Adonay', 'Yonnas', '2026-02-10'),
(4, 'study_nerd', 'chris.a@email.com', 'Chris', 'Alpuerto', '2026-02-15');

INSERT INTO Location (LocationID, Latitude, Longitude, StreetAddress, City, State, ZipCode) VALUES
('LOC001', '33.88135', '-117.88525', '800 State College Blvd', 'Fullerton', 'CA', 92834),
('LOC002', '33.87373', '-117.92417', '444 N Harbor Blvd', 'Fullerton', 'CA', 92832),
('LOC003', '33.78765', '-117.85372', '100 W Chapman Ave', 'Orange', 'CA', 92866);

INSERT INTO Category (CategoryID, CategoryName) VALUES
('CAT01', 'Cafe'),
('CAT02', 'Library'),
('CAT03', 'Restaurant');

INSERT INTO Amenity (AmenityID, AmenityName) VALUES
('AMEN01', 'Wi-Fi'),
('AMEN02', 'Power Outlets'),
('AMEN03', 'Indoor Seating'),
('AMEN04', 'Restrooms');

INSERT INTO StudySpot (SpotID, SpotName, Description, Website, PhoneNum, PriceLevel, CategoryID, LocationID) VALUES
('SPOT01', 'Pollak Library', 'Central library at CSUF with plenty of tables and outlets.', 'library.fullerton.edu', 7142782011, 0.0, 'CAT01', 'LOC001'),
('SPOT02', 'Lovetta', 'Cozy local cafe with great espresso.', 'lovetta-fullerton.square.site', 7145193130, 1.0, 'CAT02', 'LOC002'),
('SPOT03', 'Urth Caffe', 'Breakfast and lunch spot with a cozy atmosphere.', 'urthcaffe.com', 9493295755, 3.0, 'CAT03', 'LOC003');

INSERT INTO Hours (HoursID, SpotID, DayOfWeek, OpenTime, CloseTime, IsClosed) VALUES
('H001', 'SPOT01', 'Monday', '07:00:00', '22:00:00', FALSE),
('H002', 'SPOT01', 'Sunday', '00:00:00', '00:00:00', TRUE),
('H003', 'SPOT02', 'Monday', '07:00:00', '18:00:00', FALSE);

-- Ratings are on a scale of 1-10 
INSERT INTO Review (ReviewID, UserID, SpotID, Rating, ReviewText, ReviewDate, NoiseLevel, WifiQuality, OutletAvailable) VALUES
('REV01', 1, 'SPOT03', 8, 'Great spot, but can get noisy during lunch.', '2026-03-01', 7, 'Good', FALSE),
('REV02', 2, 'SPOT02', 9, 'Great lattes and very reliable Wi-Fi.', '2026-03-05', 3, 'High Speed', TRUE),
('REV03', 3, 'SPOT01', 10, 'Silent and peaceful.', '2026-03-10', 1, 'Average', TRUE);

INSERT INTO Photo (PhotoID, SpotID, PhotoURL, UploadDate, Caption) VALUES
('PH01', 'SPOT01', '', '2026-03-01', 'Quietest study spot in the library'),
('PH02', 'SPOT02', '', '2026-03-05', 'Seat with outlet available');

INSERT INTO Study_Spot_Amenity (SpotID, AmenityID) VALUES
('SPOT01', 'AMEN01'), -- Pollak Library has Wi-Fi
('SPOT01', 'AMEN02'), -- Pollak Library has Outlets
('SPOT02', 'AMEN01'), -- Lovetta has Wi-Fi
('SPOT02', 'AMEN03'), -- Lovetta has indoor Seating
('SPOT03', 'AMEN04'); -- Urth Caffe has Restrooms