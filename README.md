# Analyzing U.S. Electric Vehicle Market Share

## Project Overview

This project analyzes U.S. vehicle registration data to understand the market share and adoption of electric vehicles (EVs) across different states and fuel categories.

The analysis focuses on EV market share, state-level EV adoption, and the market presence of alternative fuel vehicles to generate insights for potential EV infrastructure planning.

## Business Questions

- What is the overall vehicle market composition by fuel type?
- What is the EV market share across U.S. states?
- Which states have the highest and lowest EV adoption rates?
- How does California compare with other large states?
- Which alternative fuel categories have meaningful market presence?
- What do EV adoption and vehicle volume imply for infrastructure planning?

## Dataset

The dataset contains registered vehicle counts across U.S. states by fuel category, including:

- Electric Vehicles (EV)
- Plug-in Hybrid Electric Vehicles (PHEV)
- Hybrid Electric Vehicles (HEV)
- Gasoline
- Diesel
- Biodiesel
- Ethanol/Flex (E85)
- Compressed Natural Gas (CNG)
- Propane
- Hydrogen
- Methanol

## Workflow

### 1. Data Cleaning

- Created a staging table in MySQL.
- Standardized column names and data types.
- Removed unnecessary columns and formatting issues.
- Calculated total registered vehicles across fuel categories.

### 2. Market Share Analysis

- Calculated fuel market share by state.
- Calculated EV adoption rate based on total registered vehicles.
- Compared EV adoption across states.
- Compared California with other large states.

### 3. Trend & Insights

- Identified states with higher and lower EV adoption.
- Analyzed the market presence of alternative fuel categories.
- Compared EV volume and total vehicle volume across states.
- Developed insights for potential infrastructure planning.

## Key Insights

- **Gasoline Dominance:** Gasoline remains the dominant fuel category across the U.S. vehicle market, while EVs, PHEVs, and HEVs represent smaller shares of registered vehicles.

- **Uneven EV Adoption:** EV adoption varies considerably across states. California stands out with a high EV adoption rate and a large absolute number of registered EVs.

- **Market Size vs. EV Penetration:** Large vehicle markets such as Texas and Florida have substantial EV volumes but lower EV adoption rates than California, indicating different levels of EV market penetration.

- **Alternative Fuel Presence:** Alternative fuel categories have different levels of market presence. Ethanol/Flex (E85) has a more meaningful presence, while Biodiesel has a smaller share and Hydrogen remains a niche category.

## Recommendations

- **Established EV Markets:** Continue supporting EV infrastructure expansion in established markets such as California, where both EV adoption and the existing EV population are relatively high.

- **Potential Growth Markets:** Large vehicle markets such as Texas and Florida could represent potential EV growth opportunities as EV penetration increases.

- **Infrastructure Planning:** Consider both EV adoption rate and absolute EV volume when assessing potential infrastructure demand. Adoption rate reflects market penetration, while EV volume indicates the size of the existing EV population.

- **Alternative Fuel Planning:** Consider the relative market presence of each alternative fuel category when evaluating infrastructure and investment priorities.

> **Note:** The dataset contains registered vehicle data but does not include charging-station or charging-port data. Therefore, the recommendations indicate potential market and infrastructure demand rather than measured infrastructure gaps.

## Tools

- Microsoft Excel
- MySQL / SQL
- Tableau

## Project Outcome

The analysis provides a state-level view of EV adoption and fuel market composition, highlighting differences in EV penetration and vehicle market size that can support data-driven infrastructure and market planning.
