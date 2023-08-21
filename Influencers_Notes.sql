CREATE DATABASE influencersDB;
USE influencersDB;

CREATE TABLE Influencers (
    InfluencerID tinyint,
    name varchar(32) NOT NULL,
    age tinyint,
    instagramFollowers int,
	PRIMARY KEY (InfluencerID)
);
SELECT *
FROM Influencers;

INSERT INTO Influencers (InfluencerID, name, age, instagramFollowers)
VALUES (1, 'Anna', 24, 50000), (2, 'Bent', 22, 20000), (3, 'Caroline', 26, 80000),
(4, 'David', 28, 45000), (5, 'Ella', 30, 70000), (6, 'Frank', 27, 32000),
(7, 'Grace', 29, 92000), (8, 'Henry', 31, 48000);

CREATE TABLE SocialMediaPlatforms (
platformID tinyint,
name varchar(32) NOT NULL,
averageUserAge dec(3, 2),
totalUsers int,
PRIMARY KEY (platformID)
);
SELECT *
FROM SocialMediaPlatforms;

INSERT INTO SocialMediaPlatforms (platformID, name, averageUserAge, totalUsers)
VALUES (1, 'Instagram', 24.5, 1000000), (2, 'TikTok', 18.5, 2000000),
(3, 'YouTube', 28.5, 1500000), (4, 'Snapchat', 20.0, 800000),
(5, 'X (previously Twitter)', 27.5, 500000), (6, 'Facebook', 32.5, 2000000),
(7, 'Pinterest', 29.0, 600000), (8, 'LinkedIn', 34.0, 400000);

ALTER TABLE SocialMediaPlatforms
ALTER COLUMN averageUserAge decimal(4,1);

CREATE TABLE Brands (
brandID tinyint,
name varchar(32) NOT NULL,
category varchar(32) NOT NULL,
PRIMARY KEY (brandID)
);

INSERT INTO Brands (brandID, name, category)
VALUES (1, 'FashionCo', 'fashion'), (2,'BeautyBliss', 'beauty'), (3, 'TechTron', 'technology'),
(4, 'GlamGlow', 'beauty'), (5, 'SportSpot', 'sports'), (6, 'EcoEssentials', 'lifestyle'),
(7, 'TrendTech', 'technology'), (8, 'MystiqueMakeup', 'beauty');

SELECT *
FROM Brands;

CREATE TABLE Collaborations (
collaborationID tinyint,
influencerID tinyint, 
brandID tinyint,
platformID tinyint,
duration smallint,
payment decimal(6, 2),
PRIMARY KEY (collaborationID)
);

INSERT INTO Collaborations (collaborationID, influencerID, brandID, platformID, duration, payment)
VALUES (1, 1, 1, 1, 30, 5000), (2, 2, 3, 2, 10, 3000.5), (3, 3, 2, 3, 20, 7500),
(4, 4, 4, 4, 15, 2500), (5, 1, 2, 1, 25, 6000.5), (6, 3, 1, 2, 40, 6500.75), 
(7, 5, 5, 5, 45, 5300), (8, 6, 6, 6, 20, 3500.25),
(9, 7, 7, 7, 15, 4700.5), (10, 8, 8, 8, 25, 2900), (11, 5, 7, 1, 30, 5100.75), 
(12, 6, 5, 2, 40, 4000),
(13, 7, 6, 3, 35, 6500.25), (14, 8, 7, 4, 20, 7000.5);

SELECT *
FROM Collaborations;
