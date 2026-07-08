# GeoGuessr Daily Challenge Location Dashboard

## Overview

This project analyzes the geographic distribution of GeoGuessr Daily Challenge locations from **June 1, 2021, through July 4, 2026**. Using historical Daily Challenge data, the analysis explores geographic patterns across countries and regions to determine whether certain locations appear more frequently than others.

The project demonstrates an end-to-end data analytics workflow, including data preparation with SQL, data modeling in Power BI, and interactive dashboard development using DAX.

## Motivation

After regularly playing the GeoGuessr Daily Challenge, I noticed that Argentina seemed to appear much more frequently than expected. This observation prompted a broader question: are Daily Challenge locations distributed evenly around the world, or are certain locations selected more frequently?

## Research Question

**Are GeoGuessr Daily Challenge locations distributed evenly across countries and regions, or are certain locations disproportionately represented?**

## Dataset

**Sources:**

- **GeoGuessr Daily Challenge Data:** [Community-maintained GeoGuessr Daily Challenge Dataset](https://datastudio.google.com/reporting/6dfa0656-55fe-409d-aea8-03f040240c83/page/GhUhE?s=n3Zod6Uw62M)

- **Geographic Mapping:** [ISO-3166 Countries with Regional Codes (via Kaggle)](https://www.kaggle.com/code/aungdev/create-country-codes-and-continents-csv-file?select=ISO-3166-Countries-with-Regional-Codes.csv) for country and region standardization.

**Coverage**

- June 1, 2021 – July 4, 2026
- Approximately 9,150 rounds
- Five rounds per Daily Challenge

Each record represents a single round and contains the challenge date, round number, country, and region.

## Tools

| Tool | Purpose |
| :--- | :--- |
| SQL | Data cleaning, transformation, and preprocessing |
| Power BI | Data modeling and interactive dashboard development |
| DAX & Power Query | Measures and calculated columns |

## Dashboard Preview

<img width="1369" height="785" alt="Screenshot 2026-07-08 at 2 19 15 AM" src="https://github.com/user-attachments/assets/fa96435b-cfd6-4fc3-916d-4cba64031eca" />

<img width="1164" height="652" alt="Screenshot 2026-07-08 at 2 26 56 PM" src="https://github.com/user-attachments/assets/85d16676-2863-466d-8773-4021966fdc18" />


## Key Findings

### Executive Summary

The map distribution is highly uneven. GeoGuessr daily challenges rely on a permanent regional bias that heavily favors Europe, while individual round positions feature predictable country shifts that make the game highly repetitive.

### Core Analytics

- Even though the Daily Challenge has featured **131 unique countries** overall, nearly a quarter of all rounds (**23.7%**) are located in just **10 countries**.

- The United States is by far the most frequent country across all time with **308 total appearances**. Most of these rounds are highly clustered within just three states: **California (27)**, **Texas (20)**, and **New York (17)**.

- At a macro level, the continental distribution is compeltely fixed from Round 1 through Round 5. **Europe** heavily dominates every round (ranging from **559 to 624 appearances**, while **Oceania** is barely featured between **57 and 76 appearances** across the board.

- While the overall continental breakdown stays the same, the top country shifts depending on which round you are playing. The United States dominates the beginning and end of the game (peaking at **70 appearances** in **Round 2**). However, South America takes over the middle rounds, with **Argentina in Round 3 (55 appearances)** and **Brazil in Round 4 (60 appearances)**.

- The map becomes more repetitive as you play. The percentage of rounds landing in a Top 10 country climbs steadily from **23.4%** in Rounds 1 and 2 up to a peak of **26.1%** by Round 5.

### Gameplay Tips

- When you recognize standard European architecture but can't pin down the exact country, centralizing your guess in Europe is your safest default move to minimize point loss.

- Pay extra attention to language and road clues in the middle rounds. Keep in mind that Argentina peaks as the #1 spot in Round 3 and Brazil in Round 4.

- Because the final round is statistically the most predictable and clustered into the Top 10 countries (26.1%), trust in the data. If you are torn between a common country and a rare one in Round 5, always guess the common country.

