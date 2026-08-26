-- Trend & Insights
-- Im going to do analyze 3 points of this :
	-- 1. Highlight which alternative fuels (biodiesel, ethanol, hydrogen) have meaningful presence vs. niche usage
		-- Create indicator meaningfull presence with percentage market for each alternatives fuels must be >= 0.01


-- 1. Highlight which alternative fuels (biodiesel, ethanol, hydrogen) have meaningful presence vs. niche usage

SELECT *
FROM vehicle_data_2;


SELECT
	SUM(Biodiesel) AS Total_Biodiesel,
	SUM(Ethanol_Flex) AS Total_Ethanol_Flex,
	SUM(Hydrogen) AS Total_Hydrogen,
    SUM(Total_Vehicle) AS Total_Vehicle
FROM
	vehicle_data_2;

SELECT
	ROUND(SUM(Biodiesel) * 100 / SUM(Total_Vehicle), 4) AS Pct_Biodiesel,
    ROUND(SUM(Ethanol_Flex) * 100 / SUM(Total_Vehicle), 4) AS Pct_Ethanol_Flex,
    ROUND(SUM(Hydrogen) * 100 / SUM(Total_Vehicle), 4) AS Pct_Hydrogen
FROM
	vehicle_data_2;

-- Create pct_marekt for each alternatives fuels with CTE

WITH alt_fuels_cte AS(
	SELECT 
		'Biodiesel' AS Fuels_Category,
        SUM(Biodiesel) AS Total_Volume,
		ROUND(SUM(Biodiesel) * 100 / SUM(Total_Vehicle), 4) AS Pct_Market
	FROM vehicle_data_2

	UNION ALL
    
    SELECT 
		'Ethanol_Flex' AS Fuels_Category,
        SUM(Ethanol_Flex) AS Total_Volume,
        ROUND(SUM(Ethanol_Flex) * 100 / SUM(Total_Vehicle), 4) AS Pct_Market
	FROM vehicle_data_2
    
    UNION ALL
    
    SELECT 
		'Hydrogen' AS Fuels_Category,
        SUM(Hydrogen) AS Total_Volume,
        ROUND(SUM(Hydrogen) * 100 / SUM(Total_Vehicle), 4) AS Pct_Market
	FROM vehicle_data_2
)

SELECT
	Fuels_Category,
    Total_Volume,
    Pct_Market,
    CASE
		WHEN Pct_Market >= 0.01 THEN 'Meaningful Presence'
        ELSE 'Niche Usage'
	END AS Status_
FROM 
	alt_fuels_cte;
    


    
    
    
    
    
    
    
    
    
