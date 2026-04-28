-- create.sql - all DDL commands for CPSC 332 Group Project
-- AUTHORS: 

CREATE DATABASE study_spots_database;
USE study_spots_database;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    joinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE study_spots (
    spot_id INT AUTO_INCREMENT PRIMARY KEY,
    spotName VARCHAR(100) NOT NULL,
    location VARCHAR(255) NOT NULL,
    description TEXT,
    phoneNumber VARCHAR(20),
    PriceLevel VARCHAR(50),
    CategoryID INT,
    LocationID INT,
    FOREIGN KEY (CategoryID) REFERENCES category(CategoryID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

CREATE TABLE category (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    CategoryName VARCHAR(50) NOT NULL
);

CREATE TABLE Location (
    LocationID INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    StreetAddress VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(50) NOT NULL,
    ZipCode INT CHECK (ZipCode >= 10000 AND ZipCode <= 99999)
    Latitude DECIMAL(10, 7),
    Longitude DECIMAL(10, 7)
);

CREATE TABLE Review (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    ReviewText TEXT,
    ReviewDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    NoiseLevel INT CHECK (NoiseLevel >= 1 and NoiseLevel <= 5),
    WifiQuality INT CHECK (WifiQuality >= 1 and WifiQuality <= 5)
);

CREATE TABLE Photo (
    PhotoID INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    PhotoURL VARCHAR(255) NOT NULL,
    Caption TEXT,
    SpotID INT,
    FOREIGN KEY (SpotID) REFERENCES StudySpot(SpotID)
);

CREATE TABLE Hours (
    HoursID INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    DayOfWeek VARCHAR(20) NOT NULL,
    OpenTime TIME NOT NULL,
    CloseTime TIME NOT NULL,
    isClosed BOOLEAN NOT NULL DEFAULT FALSE,
    SpotID INT,
    FOREIGN KEY (SpotID) REFERENCES Study_Spots(SpotID)
);

CREATE TABLE Amenity (
    AmenityID VARCHAR(255) PRIMARY KEY,
    AmenityName VARCHAR(255)
);

CREATE TABLE Study_Spot_Amentity (
    AmentityID VARCHAR(255),
    SpotID INT,
    PRIMARY KEY (AmentityID, SpotID),
    AmentityName VARCHAR(50) NOT NULL,
    FOREIGN KEY (SpotID) REFERENCES study_spots(spot_id),
    FOREIGN KEY (AmentityID) REFERENCES AmentityID(AmentityID)
);