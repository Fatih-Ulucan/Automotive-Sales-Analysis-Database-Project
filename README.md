🚗 Automotive Sales Analysis Database Project

📘 Overview

This project was developed as the final project for the Relational Database Design (RBD) course.



It models a car dealership sales system that stores comprehensive information about manufacturers, models, specific vehicle inventory (VIN-level), dealerships, sales representatives, customers, and all sales transactions. The delivery includes:



Database schema (DDL) in ddl.sql



Sample data inserts (DML) in dml.sql



13 Advanced analytical \& reporting queries in queries.sql



A visual schema diagram schema.png (ERD)



This repository demonstrates practical SQL skills (Oracle-style SQL was used): relational schema design, referential integrity, data population, and advanced analytical business queries.



🧩 Sample Data Included (high level)

The dml.sql file contains a rich dataset used for testing and demonstration. Example entities inserted:



Cities: 6 major Polish cities (Warsaw, Krakow, Wroclaw, etc.)



Manufacturers: 6 main manufacturers (e.g., Toyota, Honda, Volkswagen, BMW, Ford, Hyundai) for sales and comparison.



Models: 12 distinct vehicle models (e.g., Corolla, RAV4, Camry, Civic, Golf, X3) with body type, engine, and base price.



Vehicles: 30 individual vehicles (at the VIN-level) with varying years, colors, mileage, and status (available, sold).



Dealerships: 8 dealerships across Poland, including 'Warsaw Toyota Center' and 'Krakow Auto Mall'.



Sales\_reps: 10 sales representatives assigned to specific dealerships.



Customers: 25 sample customer records.



Sales: 20 sample sales transactions, linking a vehicle, customer, rep, and dealership for a specific price and date.



Features / Vehicle\_features: A list of amenities ('Sunroof', 'Leather Seats', 'Apple CarPlay') and a mapping of which features are on which vehicles.



Inventory: A mapping of which vehicles are currently located at which dealerships.



The dataset is large enough to run all 13 analytical queries immediately after loading the schema and data.



🧱 Database Structure (tables from ddl.sql)

The schema consists of 11 normalized tables (all names are snake\_case):



cities — Geographic locations (Poland).



manufacturers — Vehicle brands (Toyota, Honda, etc.).



models — Specific vehicle models (Corolla, RAV4) linked to manufacturers.



vehicles — Individual, VIN-level car instances; the core inventory item.



dealerships — Dealership locations and contact info.



sales\_reps — Employee records for sales staff, linked to a dealership.



customers — Customer contact and location details.



sales — The central transaction fact table, linking vehicle\_id, customer\_id, sales\_rep\_id, and dealership\_id.



inventory — Many-to-many mapping of which vehicle is at which dealership.



features — A lookup table of possible vehicle amenities (Sunroof, Heated Seats).



vehicle\_features — Many-to-many mapping of features to specific vehicles.



Note: All Foreign Key (FK) constraints are defined in ddl.sql (the script includes ALTER TABLE ... ADD CONSTRAINT statements, so run DDL fully before DML).



🔎 Analytical Queries Provided (queries.sql)

The queries.sql file contains 13 advanced analytical queries designed to answer common business questions. The queries are grouped by analysis type:



📈 Sales Performance \& Revenue Analysis

Find the single best-selling car model by units sold (Query 1).



Find the top 3 car models by total revenue generated (Query 13).



Display total sales amount and unit count per sales representative (Query 5).



List only representatives whose total sales are above 300,000 PLN (using HAVING) (Query 8).



Find the city with the most sales revenue (by joining sales through dealerships to cities) (Query 9).



🚗 Product \& Inventory Analysis

Show the average sales price for every car model (Query 4).



Find the average price for all car body types (e.g., 'SUV', 'Sedan', 'Hatchback') (Query 6).



Calculate the average price for only "SUV" body types (Query 7).



Calculate the percentage breakdown of "Hybrid", "Petrol", and "Diesel" engine cars currently in the vehicles inventory (Query 11).



📅 Temporal \& Staff Analysis

Count the total number of vehicles sold in 2024 (Query 2).



Analyze total vehicles sold and total revenue from 2024, grouped by payment type (cash, finance, lease) (Query 3).



Show sales reps who had no sales in 2023 (demonstrating a LEFT JOIN ... IS NULL anti-join) (Query 10).



These queries demonstrate aggregations (COUNT, SUM, AVG), multi-table JOINs, filtering (WHERE), grouped filtering (HAVING), and subqueries.



⚙️ How to run (recommended order)

Open your SQL client (Oracle SQL Developer, DBeaver configured for Oracle, etc.)



Run ddl.sql to create all 11 tables and their constraints.



Make sure the script runs without errors (FKs are added via ALTER TABLE statements at the end).



Run dml.sql to populate the tables with sample data.



The DML uses TO\_DATE(..., 'YYYY-MM-DD') for date values.



Run queries.sql to execute the 13 example analytical queries and inspect the results.



Optionally COMMIT transactions if your environment requires it (the provided DML ends with COMMIT;).



⚠️ Notes \& Caveats

Oracle Dialect: The DDL, DML, and Queries are all written for an Oracle database (VARCHAR2, NUMBER, TO\_DATE, FETCH FIRST ... ROWS ONLY). For use with PostgreSQL, MySQL, or SQL Server, data types (VARCHAR2→VARCHAR, NUMBER→DECIMAL/NUMERIC), date functions (TO\_DATE), and TOP N syntax (FETCH FIRST→LIMIT/TOP) would need to be modified.



Naming Convention: The schema, ERD, and all queries strictly follow a snake\_case (lowercase\_with\_underscores) naming convention for all tables and columns for maximum consistency and readability.



📁 Files in this repository

ddl.sql — DDL / schema (CREATE TABLE + ALTER TABLE FK constraints)



dml.sql — Sample data inserts for testing (INSERT ... ; COMMIT;)



queries.sql — 13 example analytical queries



schema.png — The final, verified ERD (schema diagram image)



README.md — This documentation



👨‍🎓 Author \& attribution

Fatih Ulucan



