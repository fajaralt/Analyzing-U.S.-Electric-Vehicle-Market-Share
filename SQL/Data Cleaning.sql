-- In this session im gonna do Data Cleaning 
-- I already removes duplicat using Excel and create the table 
-- This session i worked on : 
	-- 1. Create DataBase and import dataset 
	-- 2. Create the staging table 
  -- 3. Adding new column and modifiy name column 


-- 1. Create DataBase and import dataset 

CREATE DATABASE vehicle_project;

USE vehicle_project;

SELECT * 
FROM vehicle_data_cleaned;

-- 2. Create the stagging table

CREATE TABLE vehicle_data_2
LIKE vehicle_data_cleaned;

SELECT *
FROM vehicle_data_2;

INSERT INTO vehicle_data_2
SELECT * 
FROM vehicle_data_cleaned;

SELECT *
FROM vehicle_data_2;

-- 3. Modify new table (adding values + new column(total_vehicle) and rename)

ALTER TABLE vehicle_data_2
ADD COLUMN Total_Vehicle INT;

SELECT *
FROM vehicle_data_2;

DESCRIBE vehicle_data_2; -- Makesure the data type is correct 

ALTER TABLE vehicle_data_2
RENAME COLUMN `Electric (EV)` TO EV,
RENAME COLUMN `Plug-In Hybrid Electric (PHEV)` TO PHEV,
RENAME COLUMN `Hybrid Electric (HEV)` TO HEV,
RENAME COLUMN `Biodiesel` TO Biodiesel,
RENAME COLUMN `Ethanol/Flex (E85)` TO Ethanol_Flex,
RENAME COLUMN `Compressed Natural Gas (CNG)` TO CNG,
RENAME COLUMN `Propane` TO Propane,
RENAME COLUMN `Hydrogen` TO Hydrogen,
RENAME COLUMN `Methanol` TO Methanol,
RENAME COLUMN `Gasoline` TO Gasoline,
RENAME COLUMN `Diesel` TO Diesel
;

ALTER TABLE vehicle_data_2
RENAME COLUMN `Compressed Natural Gas (CNG)` TO CNG;

UPDATE vehicle_data_2 
SET Total_Vehicle = (EV + PHEV + HEV + Biodiesel + 
Ethanol_Flex + CNG + Propane + Hydrogen + Methanol + 
Gasoline + Diesel)
;

