# GeoGuessr Daily Challenge Location Dashboard

## Overview

This project analyzes the geographic distribution of GeoGuessr Daily Challenge locations from **June 1, 2021, through July 4, 2026**. Using historical Daily Challenge data, the analysis explores geographic patterns across countries and regions to determine whether certain locations appear more frequently than others.

The project demonstrates an end-to-end data analytics workflow, from data cleaning and transformation in SQL to data modeling, DAX calculations, and interactive dashboard development in Power BI.

## Research Question

**Are GeoGuessr Daily Challenge locations distributed evenly across countries and regions, or are certain locations disproportionately represented?**

## Dataset

**Sources:**

- **GeoGuessr Daily Challenge Data:** [Community-maintained GeoGuessr Daily Challenge Dataset](https://datastudio.google.com/reporting/6dfa0656-55fe-409d-aea8-03f040240c83/page/GhUhE?s=n3Zod6Uw62M)

- **Geographic Mapping:** [ISO-3166 Countries with Regional Codes (via Kaggle)](https://www.kaggle.com/code/aungdev/create-country-codes-and-continents-csv-file?select=ISO-3166-Countries-with-Regional-Codes.csv) for country and region standardization.

**Dataset Summary**

- **Time Period:** June 1, 2021 – July 4, 2026
- **Observations:** Approximately 9,150 rounds
- Five rounds per Daily Challenge

Each record includes:

- Challenge date
- Round number
- Country
- Geographic region

## Tools

| Tool | Purpose |
| :--- | :--- |
| SQL | Data cleaning, preprocessing, and transformation |
| Power Query | Data preparation |
| DAX | Measures, calculated columns, and KPIs |
| Power BI | Data modeling and dashboard development |

## Methodology

The project follows a complete analytics workflow:

1. Imported historical GeoGuessr Daily Challenge data.
2. Cleaned and standardized country names using SQL.
3. Added ISO-3166 country reference table.
4. Loaded transformed data into Power BI.
5. Built a star schema.
6. Created DAX measures to calculate country frequency, regional distribution, rankings, and percentage metrics.
7. Developed an interactive Power BI dashboard to explore geographic patterns across countries, regions, and rounds.

## Power BI Dashboard

### Features

The Power BI dashboard includes:

- Interactive world map
- Country and continent frequency analysis
- Round by round comparisons
- Top 10 country rankings
- KPI summary cards
- Interactive slicers and filters

### Dashboard Preview

<img width="1369" height="785" alt="Screenshot 2026-07-08 at 2 19 15 AM" src="https://github.com/user-attachments/assets/fa96435b-cfd6-4fc3-916d-4cba64031eca" />

<img width="1164" height="652" alt="Screenshot 2026-07-08 at 2 26 56 PM" src="https://github.com/user-attachments/assets/85d16676-2863-466d-8773-4021966fdc18" />


## Key Findings

### Executive Summary

The map distribution is highly uneven. The analysis reveals a consistent regional bias favoring Europe throughout the observed time period, while individual rounds exhibit predictable shifts in the countries that appear most frequently.

### Uneven Geographic Distribution:

Although the Daily Challenge has featured **131 unique countries**, location selection is highly concentrated. The **top 10 countries account for 23.7% of all rounds**, indicating a strong geographic bias rather than an even global distribution.

### Most Frequent Country:

The **United States** appeared **308 times**, making it the most frequently selected country during the analysis period. Most of these rounds were located within just three states: **California (27)**, **Texas (20)**, and **New York (17)**.

### Regional Patterns:

**Europe** heavily dominates every round, with between **559 to 624 appearances** per round position. In contrast, **Oceania** is barely featured with nonly **57 and 76 appearances** across each round.

### Round-Level Trends:

Although continent-level representation changes very little between rounds, the most frequently selected countries vary throughout the challenge:

- **Rounds 1-2:** United States appears most frequently.
- **Round 3:** Argentina becomes the most common country.
- **Round 4:** Brazil appears most frequently.
- **Round 5:** United States again becomes the most common.

### Round Distribution Concentration:

Although the top 10 countries differ by round, the geographic distribution becomes slightly more concentrated as the Daily Challenge progresses. The top 10 countries for each round account for **23.4%** of locations in Rounds 1 and 2, increasing to **26.1%** in Round 5. This suggests later rounds are drawn from a narrower set of commonly featured countries.

