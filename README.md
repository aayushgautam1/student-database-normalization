# Student Database Normalization Project

## About the Project
This project is about improving a student management database using MySQL. Initially, information such as student groups, cities, and statuses was stored directly in the student table, resulting in repeated data.

I reorganized the database by moving this information into separate tables and connecting them using foreign keys. This makes the database more organized, reduces data duplication, and improves data consistency.

## What I Did
1. **Created Separate Tables:** Created `groups`, `cities`, and `statuses` tables to store unique values.
2. **Migrated Existing Data:** Extracted unique group, city, and status values from the original student table.
3. **Established Relationships:** Added foreign key columns (`groups_id`, `city_id`, `status_id`) and used `INNER JOIN` updates to connect existing student records.
4. **Removed Duplicate Columns:** Removed the original text columns and added foreign key constraints to maintain relationships between tables.

## Project Files
- **`schema.sql`** – Contains the final database structure and records.
- **`normalization_script.sql`** – Contains the SQL queries used during the normalization process.
- **`Normalization_Documentation.pdf`** – Includes screenshots of the SQL queries and the final ER diagram.

## Technologies Used
- **Database:** MySQL
- **Database Management Tool:** phpMyAdmin
- **Language:** SQL

## What I Learned
Working on this project helped me understand how database normalization works in practice. I also gained experience creating tables, working with primary and foreign keys, using SQL JOIN and UPDATE statements, and maintaining relationships between database tables.
