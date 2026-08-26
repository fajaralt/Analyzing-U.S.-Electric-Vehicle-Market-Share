-- Market Share Analysis 
-- Im going to do analyze 3 points of this : 
	-- 1. Calculate the percentage of EVs, PHEVs, HEVs, and Gasoline vehicles for each state.
    -- 2. Identify the top 5 states with the highest EV adoption rate (EVs as a % of all registered vehicles).
    -- 3. Compare EV adoption in California vs. other large states (e.g., Texas, Florida, New York).


-- 1. Calculate the percentage of EVs, PHEVs, HEVs, and Gasoline vehicles for each state.

SELECT 
	State,
    EV,
    PHEV,
    HEV,
    Gasoline
FROM vehicle_data_2;

-- Create Total Vehicle with cte and Calculate the percentage

WITH Total_for_States AS (
	SELECT 
    State,
	EV,
	PHEV,
	HEV,
	Gasoline,
    (EV + PHEV + HEV + Biodiesel + Ethanol_Flex + CNG + Propane + 
	Hydrogen + Methanol + Gasoline + Diesel) AS Total_Vehicle
FROM 
	vehicle_data_2
)

SELECT 
State,
	Total_Vehicle,
    ROUND(EV * 100/ Total_Vehicle, 2) AS EV_pct, -- EV share 
    ROUND(PHEV * 100/ Total_Vehicle, 2) AS PHEV_pct, -- PHEV share
    ROUND(HEV * 100/ Total_Vehicle, 2) AS HEV_pct, -- HEV share
    ROUND(Gasoline * 100/ Total_Vehicle, 2) AS Gasoline_pct -- Gasoline share
FROM
	Total_for_States;
    
SELECT *
FROM Total_for_States;



-- 2. Identify the top 5 states with the highest EV adoption rate (EVs as a % of all registered vehicles).

SELECT 
	State,
    ROUND(EV * 100 / (EV + PHEV + HEV + Biodiesel + Ethanol_Flex + CNG + Propane + 
	Hydrogen + Methanol + Gasoline + Diesel), 3) AS EV_Adoption_Rate_pct,
    Total_Vehicle
FROM
	vehicle_data_2
ORDER BY 
	EV_Adoption_Rate_pct DESC
LIMIT 5;



-- 3. Compare EV adoption in California vs. other large states (e.g., Texas, Florida, New York).

SELECT 
	State,
    ROUND(EV * 100 / (EV + PHEV + HEV + Biodiesel + Ethanol_Flex + CNG + Propane + 
	Hydrogen + Methanol + Gasoline + Diesel), 3) AS EV_Adoption_Rate_pct,
    Total_Vehicle
FROM
	vehicle_data_2
WHERE
	State IN ('California', 'Texas', 'Florida', 'New York')
ORDER BY
	EV_Adoption_Rate_pct DESC;
    
    
