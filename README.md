This project develops and manipulates a hospital inpatient database using SQL and MongoDB. It covers relational queries, data insertion, transaction-safe updates, reporting, schema modifications, and generating JSON/MongoDB documents for doctor and admission records.

---

## Project Overview

This project implements a complete relational and non-relational database solution for the Monash Hospital inpatient management scenario, combining careful logical design, transactional SQL programming, and MongoDB document handling. 

The core aim is to capture and manage:
* Patient admissions.
* Supervising doctors and their specialisations.
* Prescribed and completed procedures (including technician- or doctor-performed work).
* Consumable items used during procedures.
* Cost-centres and charging rules.
* The billing/invoicing lifecycle for completed admissions.

Emphasis is placed on data integrity, normalisation, correct transaction handling, and realistic test data that reflects hospital operations.

---

## Development Workflow & Tasks

Work is organised into practical tasks that reflect real-world database development:

* **Relational Algebra & Data Loading:** Initial tasks require relational algebra queries and full data-load scripts that insert sample admissions, procedures, and item-usage records as single transactions.
* **DML & DDL Discipline:** Subsequent tasks focus on creating sequences for safe key generation, inserting and updating admissions/procedures using transactions, and making controlled schema changes.
* **Schema Modifications:** Evolving the live schema to support new requirements such as supervision counts, daily bed charges, and a separate invoices table (with auto-numbering and computed bed/procedure totals) while maintaining consistency and column comments.
* **SQL Reporting Queries:** Implementing reports for admissions by date/doctor, procedure cost comparisons, patient admission counts, length-of-stay calculations, and per-procedure price differentials with precise formatting and ordering requirements.
* **Non-Relational Integration:** Extending to non-relational processing by generating JSON documents from relational data and populating a MongoDB collection to support document-oriented queries (e.g., per-doctor admission aggregates and live-discharge operations).

---

## Repository Contents

* **T1-mh-ra.pdf** – Contains relational algebra solutions for querying the Monash Hospital database based on the brief’s requirements.
* **T2-mh-insert.sql** – Loads the database with test data for patients, admissions, procedures, and item treatments using controlled, transaction-based `INSERT` statements.
* **T3-mh-dml.sql** – Performs required data manipulation tasks including sequence creation, inserting new admission records, updating doctor specialisations, and recording completed procedures.
* **T4-mh-select.sql** – Implements all required SQL `SELECT` queries for reporting, including admissions summaries, procedure cost analysis, patient statistics, and price differentials.
* **T5-mh-mods.sql** – Applies schema and data modifications to the live database, adding supervision counts, bed charges, and an invoices system while maintaining consistency.
* **T6-mh-json.sql** – Generates JSON documents from relational tables to prepare data for MongoDB, representing doctors and their supervised admissions.
* **T6-mh-mongo.mongodb.js** – Executes MongoDB operations such as inserting generated documents, querying doctor data, and updating admission discharge details in a document-oriented format.
* **Relational_and_non_instructions** – Contains the brief and all instructions/questions for each task.
