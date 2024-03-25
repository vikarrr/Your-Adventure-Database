CREATE TABLE Person (
    PersonId INT PRIMARY KEY  NOT NULL,
    Nickname VARCHAR(30),
    Bday VARCHAR(10),
    Email VARCHAR(100),
    Profilepicture VARCHAR(max),
    Password VARCHAR(100),
);

CREATE TABLE AchievementStatus (
    AchievementStatusId INT PRIMARY KEY NOT NULL,
    AchievementStatusName VARCHAR(50) 
);

CREATE TABLE Achievement (
	AchievementId INT PRIMARY KEY NOT NULL,
    AchievementName VARCHAR(100),
    StatusFId INT FOREIGN KEY REFERENCES AchievementStatus(AchievementStatusId),
    PersonFId INT FOREIGN KEY REFERENCES Person(PersonId),
);

CREATE TABLE InterfaceLanguage (
	InterfaceLanguageId int PRIMARY KEY NOT NULL,
	InterfaceLanguage varchar(30) 
);

CREATE TABLE Color (
	ColorId INT PRIMARY KEY NOT NULL,
	ColorName varchar(30)
);

CREATE TABLE Settings (
	SettingsId INT PRIMARY KEY NOT NULL,
	InterfaceLanguageFId INT FOREIGN KEY REFERENCES InterfaceLanguage(InterfaceLanguageId),
	Notification bit,
	ColorFId INT FOREIGN KEY REFERENCES Color(ColorId),
	PersonFId INT FOREIGN KEY REFERENCES Person(PersonId)
);

CREATE TABLE Country (
	CountryId INT PRIMARY KEY NOT NULL,
	CountryName varchar(50)
);

CREATE TABLE VisitedCountries (
	VisitedCountries INT PRIMARY KEY NOT NULL,
	PersonFId INT FOREIGN KEY REFERENCES Person(PersonId),
	CountryFId INT FOREIGN KEY REFERENCES Country(CountryId)
);

CREATE TABLE Photo (
	PhotoId INT PRIMARY KEY NOT NULL,
	Photo varchar(max),
	CountryFId INT FOREIGN KEY REFERENCES Country(CountryId),
	PersonFId INT FOREIGN KEY REFERENCES Person(PersonId)
);

