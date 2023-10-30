Use ArBNB

Drop table weekends

CREATE TABLE Airbnb_weekdays( 	
company_id int identity, 	
realSum float NULL, 	
room_type nvarchar(50) NULL, 	
room_shared nvarchar(50) NULL, 	
room_private nvarchar(50) NULL, 	
person_capacity tinyint NULL, 	
host_is_superhost nvarchar(50)NULL, 	
multi nvarchar(50) NULL, 	
biz bit NULL, 	
cleanliness_rating tinyint NULL, 	
guest_satisfaction_overall tinyint NULL, 	
bedrooms tinyint NULL, 	
dist float NULL, 	
metro_dist float NULL, 	
attr_index float NULL, 	
attr_index_norm float NULL, 	
rest_index float NULL,
rest_index_norm float NULL,
lng float NULL,
lat float NULL,
country nvarchar(25) NULL,
day_of_week nvarchar(10) NULL);

BULK INSERT Airbnb_weekdays 
FROM 'C:\Users\Balogun\Downloads\Data Analytics\PowerBI_project\ArBnB Project\vienna_weekdays.csv' 
WITH
(     
FORMAT='CSV',
FIRSTROW=2, -- Skip the header row 
FIELDTERMINATOR = ',', -- Comma is the default field terminator     
ROWTERMINATOR = '\n'   -- Newline is the default row terminator 
)

UPDATE Airbnb_weekdays 
SET COUNTRY = 'vienna',  day_of_week = 'Weekday' 
WHERE COUNTRY IS NULL and day_of_week IS NULL


select * from Airbnb_weekdays




CREATE TABLE Airbnb_weekends( 	
company_id int identity, 	
realSum float NULL, 	
room_type nvarchar(50) NULL, 	
room_shared nvarchar(50) NULL, 	
room_private nvarchar(50) NULL, 	
person_capacity tinyint NULL, 	
host_is_superhost nvarchar(50)NULL, 	
multi nvarchar(50) NULL, 	
biz bit NULL, 	
cleanliness_rating tinyint NULL, 	
guest_satisfaction_overall tinyint NULL, 	
bedrooms tinyint NULL, 	
dist float NULL, 	
metro_dist float NULL, 	
attr_index float NULL, 	
attr_index_norm float NULL, 	
rest_index float NULL,
rest_index_norm float NULL,
lng float NULL,
lat float NULL,
country nvarchar(25) NULL,
day_of_week nvarchar(10) NULL);

BULK INSERT Airbnb_weekends 
FROM 'C:\Users\Balogun\Downloads\Data Analytics\PowerBI_project\ArBnB Project\vienna_weekends.csv' 
WITH
(     
FORMAT='CSV',
FIRSTROW=2, -- Skip the header row 
FIELDTERMINATOR = ',', -- Comma is the default field terminator     
ROWTERMINATOR = '\n'   -- Newline is the default row terminator 
)

UPDATE Airbnb_weekends 
SET COUNTRY = 'vienna',  day_of_week = 'Weekend' 
WHERE COUNTRY IS NULL and day_of_week IS NULL


select * from Airbnb_weekends

CREATE VIEW Airbnb AS 
SELECT *FROM Airbnb_weekends
UNION ALL
SELECT *FROM AIRBNB_WEEKDAYS


select * from Airbnb