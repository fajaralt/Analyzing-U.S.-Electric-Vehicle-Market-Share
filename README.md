# U.S. Electric Vehicle Market Share Analysis

An exploratory data analysis project analyzing registered vehicles across U.S. states by fuel type, with a focus on EV adoption, alternative fuel market share, and implications for EV infrastructure planning.

## Business Questions

- What is the vehicle market composition across U.S. states?
- Which states have the highest EV adoption rates?
- How does EV adoption differ between California and other large states?
- Which alternative fuels have meaningful market presence versus niche usage?
- What do EV adoption and vehicle volume imply for infrastructure planning?

## Dataset

The dataset contains registered vehicle counts by U.S. state across multiple fuel categories, including:

- Electric Vehicles (EV)
- Plug-In Hybrid Electric Vehicles (PHEV)
- Hybrid Electric Vehicles (HEV)
- Gasoline
- Diesel
- Biodiesel
- Ethanol/Flex (E85)
- Compressed Natural Gas (CNG)
- Propane
- Hydrogen
- Methanol

## Analysis Workflow

### 1. Data Cleaning

Using MySQL to:

- Create a staging table
- Standardize column names
- Add a `Total_Vehicle` column
- Calculate total registered vehicles across all fuel categories
- Check data structure and data types

### 2. Market Share Analysis

Calculated the percentage share of:

- EV
- PHEV
- HEV
- Gasoline

for each state.

EV adoption rate was calculated as:

**EV Adoption Rate = EV / Total Registered Vehicles × 100**

The analysis also compared EV adoption between California, Texas, Florida, and New York.

### 3. Alternative Fuel Analysis

Compared the market presence of:

- Ethanol/Flex (E85)
- Biodiesel
- Hydrogen

Alternative fuels were classified as:

- **Meaningful Presence:** ≥ 0.01% market share
- **Niche Usage:** < 0.01% market share

### 4. Visualization

Built interactive Tableau visualizations to present:

- EV adoption by state
- Top states by EV adoption rate
- Total vehicle volume by state
- Alternative fuel market share

## Key Findings

- Gasoline remains the dominant vehicle fuel category.
- California has the highest EV adoption rate among the states analyzed and also has the largest absolute EV volume.
- States such as Texas and Florida have large vehicle markets and substantial EV volumes, but lower EV adoption rates than California.
- Ethanol/Flex (E85) has a meaningful presence compared with other alternative fuels.
- Biodiesel has a smaller but measurable market presence.
- Hydrogen remains a niche category in the dataset.

## Infrastructure Planning Implications

EV adoption rate alone does not determine infrastructure priorities.

The analysis considers both:

- **EV Adoption Rate** — indicates the level of EV penetration.
- **EV Volume** — indicates the number of EVs that may require charging infrastructure.
- **Total Vehicle Volume** — provides context on the size of the overall vehicle market.

Based on these indicators:

- **California:** An established EV market with high adoption and large EV volume, supporting continued infrastructure expansion.
- **Florida:** A large vehicle market with substantial EV volume and further room for EV adoption growth.
- **Texas:** A very large vehicle market with significant EV volume but relatively lower EV penetration, representing potential future infrastructure demand.

These recommendations represent an assessment of potential infrastructure demand based on vehicle registration data. The dataset does not contain charging-station or charging-port data, so actual infrastructure gaps cannot be directly measured.

## Tools

- Microsoft Excel — Initial data preparation
- MySQL — Data cleaning, transformation, aggregation, and analysis
- Tableau — Data visualization and dashboard development

## View Tableau Dashboard 
https://public.tableau.com/views/USElectricVehicleMarketShareAnalysis_17877439879670/DashboardUSElectricVehicle?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
