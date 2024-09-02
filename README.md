# SQL Database Seed Scripts

This repo contains SQL scripts with mock data for three common database types: Transactional (OLTP), Analytical (OLAP), and Time-Series.

## Database Types

### 1. Transactional (OLTP)
- **Use Case:** E-commerce (customers, orders, products).
- **Tables:** `Customers`, `Categories`, `Products`, `Orders`, `OrderItems`

#### Script: [transactional_database.sql](transactional_database.sql)

### 2. Analytical (OLAP)
- **Use Case:** Sales analysis and reporting.
- **Tables:** `DimCustomer`, `DimProduct`, `DimCategory`, `DimDate`, `FactSales`

#### Script: [analytical_database.sql](analytical_database.sql)

### 3. Time-Series
- **Use Case:** Monitoring server performance.
- **Tables:** `Servers`, `Metrics`

#### Script: [time_series_database.sql](time_series_database.sql)

## Setup
1. **Clone Repo:**
   ```bash
   git clone https://github.com/asearer/sql-database-seed-scripts.git
   cd sql-database-seed-scripts
   ```
2. **Run Scripts:**
   - Create a database (e.g., `OLTP_DB`).
   - Execute:
     ```bash
     mysql -u username -p OLTP_DB < transactional_database.sql
     ```

