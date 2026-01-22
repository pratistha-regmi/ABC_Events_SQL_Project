# ABC Events SQL Project

A comprehensive MySQL database project designed to model a professional event management company.  
This project covers database design, normalization, ERD/RDM development, table creation, data insertion, and real-world business scenario queries.

---

## 📑 Table of Contents
1. [Project Overview](#project-overview)
2. [Problem Statement & Objectives](#problem-statement--objectives)
3. [Database Design](#database-design)
   - [Entity Relationship Diagram (ERD)](#entity-relationship-diagram-erd)
   - [Relational Data Model (RDM)](#relational-data-model-rdm)
   - [Normalization](#normalization)
4. [Database Implementation](#database-implementation)
   - [Table Creation](#table-creation)
   - [Altering Tables & Constraints](#altering-tables--constraints)
   - [Data Insertion](#data-insertion)
5. [Scenarios & Queries](#scenarios--queries)
6. [Project Structure](#project-structure)
7. [How to Run the Project](#how-to-run-the-project)
8. [Technologies Used](#technologies-used)
9. [Author](#author)

---

## 📌 Project Overview

ABC Events is a professional event management company that provides customized event planning services, including venue coordination, vendor management, scheduling, budgeting, and on-site execution.

This database system was designed to centralize and manage all event-related data efficiently, ensuring accuracy, consistency, and scalability while supporting real-world operational and business decision-making.

---

## 🎯 Problem Statement & Objectives

### Problems Identified
- Difficulty tracking multiple events occurring simultaneously
- Complex financial tracking involving invoices, payments, and outstanding balances
- Manual coordination of clients, vendors, staff, schedules, and venues
- Risk of data duplication and inconsistencies

### Objectives
- Design a centralized relational database
- Eliminate redundancy through normalization
- Support financial tracking and reporting
- Enable meaningful analytical queries for business decisions

---

## 🗂 Database Design

### Entity Relationship Diagram (ERD)
The ERD visually represents all entities and their relationships, including:
- Clients, Events, Venues, Vendors
- Invoices, Payments
- Staff, Schedules, Performers
- Attendees and supervisory relationships

📁 Located in: `diagrams/ERD.png`

---

### Relational Data Model (RDM)
The RDM translates the ERD into relational tables with:
- Primary Keys (PK)
- Foreign Keys (FK)
- Junction tables for many-to-many relationships

📁 Located in: `diagrams/RDM.png`

---

### Normalization
All tables are normalized up to **Third Normal Form (3NF)**:
- No partial dependencies
- No transitive dependencies
- All non-key attributes depend only on the primary key

This ensures data integrity, reduced redundancy, and efficient updates.

---

## 🛠 Database Implementation

### Table Creation
All base tables are created using `CREATE TABLE` statements without constraints.

📄 Script:  
`scripts/01_create_tables.sql`

---

### Altering Tables & Constraints
Primary keys and foreign keys are added using `ALTER TABLE`, including:
- Composite primary keys for junction tables
- Referential integrity enforcement
- Logical relationship mapping

📄 Script:  
`scripts/02_alter_tables.sql`

---

### Data Insertion
Sample, realistic data is inserted into all tables using explicit column lists to ensure clarity and consistency.

📄 Script:  
`scripts/03_insert_data.sql`

---

## 📊 Scenarios & Queries

The project includes business-driven SQL queries addressing real-world needs such as:

1. Identifying the most expensive event and outstanding balances
2. Viewing events within a specific date range
3. Listing events at top venues
4. Linking events with invoices
5. Finding the most popular events by attendee count
6. Identifying repeat clients and event frequency
7. Analyzing invoice statistics for paid events

📄 Script:  
`scripts/04_scenarios_queries.sql`

---

Execute scripts in the following order:

`

## 📁 Project Structure

```md
ABC_Events_SQL_Project/
│
├── scripts/
│ ├── 01_create_tables.sql
│ ├── 02_alter_tables.sql
│ ├── 03_insert_data.sql
│ └── 04_scenarios_queries.sql
│
├── diagrams/
│ ├── ERD.png
│ └── RDM.png
│
├── database/
│ └── DATABASE.png
│
└── README.md

```
---

## ▶️ How to Run the Project (MySQL)

Follow these steps to set up and run the database locally using MySQL and MySQL Workbench.

### Prerequisites
- MySQL Server installed
- MySQL Workbench installed
- Git (optional, for cloning the repository)

---

## ▶️ How to Run the Project (MySQL)

### Steps

1. Open **MySQL Workbench**
2. Connect to your local MySQL instance
3. Create or select a schema (database), for example:

```sql
CREATE DATABASE abc_events;
USE abc_events;

SOURCE scripts/01_create_tables.sql;
SOURCE scripts/02_alter_tables.sql;
SOURCE scripts/03_insert_data.sql;
SOURCE scripts/04_scenarios_queries.sql;
```
---

## 🧰 Technologies Used

- **MySQL** – Relational database management system  
- **MySQL Workbench** – Database design, execution, and visualization  
- **SQL** – DDL, DML, DQL (CREATE, ALTER, INSERT, SELECT)  
- **Lucidchart** – Entity Relationship Diagram (ERD) design  
- **Visual Studio Code** – Code editor for SQL scripts and documentation  
- **Git & GitHub** – Version control and project hosting  
- **Markdown** – Documentation formatting for README

---

## 👤 Author

**Pratistha Regmi**  
📧 Email: pratistharegmi80@gmail.com
