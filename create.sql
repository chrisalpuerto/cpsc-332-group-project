-- create.sql - all DDL commands for CPSC 332 Group Project
-- AUTHORS: 
-- Chris Alpuerto, Ananya Karthi, Jairo Santos, Adonay Yonnas

CREATE DATABASE study_spots_database;
USE study_spots_database;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    joinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE StudySpot (
    SpotID VARCHAR(50) PRIMARY KEY,
    spotName VARCHAR(100) NOT NULL,
    Description TEXT,
    Website VARCHAR(255),
    location VARCHAR(255) NOT NULL,
    phoneNumber VARCHAR(20),
    PriceLevel FLOAT,
    CategoryID VARCHAR(50),
    LocationID VARCHAR(50),
    FOREIGN KEY (CategoryID) REFERENCES category(CategoryID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

CREATE TABLE category (
    CategoryID VARCHAR(50) PRIMARY KEY UNIQUE,
    CategoryName VARCHAR(50) NOT NULL
);

CREATE TABLE Location (
    LocationID VARCHAR(50) PRIMARY KEY UNIQUE,
    StreetAddress VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(50) NOT NULL,
    ZipCode INT CHECK (ZipCode >= 10000 AND ZipCode <= 99999),
    Latitude DECIMAL(10, 7),
    Longitude DECIMAL(10, 7)
);

CREATE TABLE Review (
    ReviewID VARCHAR(50) PRIMARY KEY,
    UserID INT NOT NULL, 
    SpotID VARCHAR(50) NOT NULL,
    Rating INT CHECK (Rating >= 1 AND Rating <= 10),
    ReviewText TEXT,
    ReviewDate DATE,
    NoiseLevel INT,
    WifiQuality VARCHAR(50),
    OutletAvailable BOOLEAN,
    FOREIGN KEY (UserID) REFERENCES users(user_id),
    FOREIGN KEY (SpotID) REFERENCES StudySpot(SpotID)
);

CREATE TABLE Photo (
    PhotoID VARCHAR(50) PRIMARY KEY,
    SpotID VARCHAR(50),
    PhotoURL VARCHAR(255) NOT NULL,
    UploadDate DATE, 
    Caption TEXT,
    FOREIGN KEY (SpotID) REFERENCES StudySpot(SpotID)
);

CREATE TABLE Hours (
    HoursID VARCHAR(50) PRIMARY KEY,
    SpotID VARCHAR(50),
    DayOfWeek VARCHAR(20) NOT NULL,
    OpenTime TIME NOT NULL,
    CloseTime TIME NOT NULL,
    IsClosed BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (SpotID) REFERENCES StudySpot(SpotID)
);

CREATE TABLE Amenity (
    AmenityID VARCHAR(50) PRIMARY KEY,
    AmenityName VARCHAR(255)
);

CREATE TABLE Study_Spot_Amenity (
    SpotID VARCHAR(50),
    AmenityID VARCHAR(50),
    PRIMARY KEY (SpotID, AmenityID),
    FOREIGN KEY (SpotID) REFERENCES StudySpot(SpotID),
    FOREIGN KEY (AmenityID) REFERENCES Amenity(AmenityID)
);