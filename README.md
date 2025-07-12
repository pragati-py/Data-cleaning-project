# Data Cleaning Project: Club Member Information

## Project Overview

This project focuses on cleaning a club membership dataset using MySQL. The original data contained inconsistencies such as duplicate records, improperly formatted dates, leading special characters, and missing values. The goal was to prepare the data for reliable analysis and reporting by ensuring it is clean, consistent, and properly structured.

The project includes the following steps:
- Removing duplicate entries based on all key identifying columns
- Trimming unnecessary whitespace and cleaning text fields
- Standardizing the format of the membership date column
- Handling missing values in the phone number field
- Renaming and modifying columns for clarity
- Addressing formatting issues in names using external tools where necessary

## Dataset Description

The dataset contains records of individuals who are members of a club. It includes the following fields:
- full_name
- age
- marital_status
- email
- phone
- full_address
- job_title
- membership_date

The raw data was stored in a table called `club_member_info`, and a cleaned version was created in a new table named `club`.

## Tools and Technologies

- MySQL for data manipulation and cleaning
- Excel (Flash Fill) for handling text formatting issues not easily addressed with MySQL

## Outcome

After cleaning, the data is:
- Free from duplicate records
- Properly formatted with standardized date and text fields
- Prepared for further analysis or visualization

This project highlights the importance of data cleaning as a foundational step in the data analysis process. Clean and consistent data ensures more accurate and meaningful insights during analysis.


