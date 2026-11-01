# Student Database Normalization Project

## Overview
This project demonstrates database normalization by refactoring an unnormalized student management database in MySQL. Redundant text columns (`group`, `city`, `status`) were converted into normalized lookup tables linked via foreign key relationships to improve data integrity and eliminate data redundancy.

## Normalization Steps
1. **Classifier Tables Creation**: Created `groups`, `cities`, and `statuses` tables with auto-increment primary keys[cite: 5, 6].
2. **Data Migration**: Extracted unique string values from the unnormalized `student` table into lookup tables[cite: 5, 6].
3. **Foreign Key Mapping**: Populated foreign key columns (`groups_id`, `city_id`, `status_id`) in `student` using `INNER JOIN` updates[cite: 5, 6].
4. **Redundancy Cleanup**: Dropped duplicate text columns and enforced foreign key constraints (`fk_student_group`, `fk_student_city`, `fk_student_status`)[cite: 4, 5, 6].

## Repository Files
- **`schema.sql`**: Full MySQL dump including normalized tables and data records[cite: 4].
- **`normalization_script.sql`**: Step-by-step SQL script executed during the normalization process[cite: 6].
- **`Normalization_Documentation.pdf`**: Step-by-step query screenshots and full ER diagram[cite: 5].

## Tech Stack
- **Database**: MySQL / MariaDB[cite: 4]
- **Management Tool**: phpMyAdmin[cite: 4, 5]
