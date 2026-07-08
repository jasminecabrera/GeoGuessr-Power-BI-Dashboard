# GeoGuessr Daily Challenge Location Dashboard

**STATUS:** Currently in Progress!

## Overview

This project analyzes the geographic distribution of GeoGuessr Daily Challenge locations from **June 1, 2021, through July 3, 2026**. Using historical Daily Challenge data, the analysis explores geographic patterns across countries and regions to determine whether certain locations appear more frequently than others.

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

<img width="1372" height="788" alt="Screenshot 2026-07-08 at 2 22 08 AM" src="https://github.com/user-attachments/assets/96b00c93-9f37-4f9e-9477-5520b1f4b5da" />

## Key Findings
