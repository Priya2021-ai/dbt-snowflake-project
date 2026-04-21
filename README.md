DBT + Snowflake Data Transformation Project

## Overview
This project demonstrates an end-to-end data transformation pipeline using DBT and Snowflake.

Weather and Bike datasets were used to perform data cleaning, transformations, and analytical modeling.

## Architecture

Raw Data ➝ DBT Models ➝ Transformed Tables ➝ Analytics Ready Data

## Tools & Technologies

- DBT (Data Build Tool)
- Snowflake
- SQL
- Git (Version Control)

## Project Structure

- models → Transformation logic
- seeds → Static datasets
- snapshots → Historical tracking
- tests → Data quality validation
- macros → Reusable SQL logic
- 
## Key Features

- Built modular DBT models for transformation
- Used macros to reuse common SQL logic across models
- Cleaned and processed Weather & Bike datasets
- Implemented data quality tests (not_null, unique)
- Created analytical tables for reporting
- Followed Git workflow (branching, commits)

## Use Case

- Data cleaning & transformation
- Building analytics-ready datasets
- Ensuring data quality using DBT testing
