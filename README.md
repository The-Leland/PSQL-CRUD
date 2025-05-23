


# Product Catalog SQL CRUD

This project defines a complete SQL-based CRUD system for managing a product catalog with companies, products, categories, warranties, and cross-references.

## 📦 Tables Included

- **Companies**
- **Products**
- **Categories**
- **Warranties**
- **ProductsCategoriesXref** (many-to-many between Products and Categories)

## 📁 Files

| File             | Purpose                                 |
|------------------|------------------------------------------|
| `schema.sql`     | Creates all tables and relationships     |
| `insert.sql`     | Inserts one sample record per table      |
| `read.sql`       | Contains all required SELECT queries     |
| `update.sql`     | Updates one or more fields per table     |
| `delete.sql`     | Deletes records with cascade where needed|

## ✅ Prerequisites

- PostgreSQL installed
- `uuid-ossp` extension enabled (automatically handled in `schema.sql`)

## 🚀 Getting Started

1. Create and connect to a database:
   ```bash
   createdb product_crud
   psql -d product_crud


<!-- run the schema -->

\i schema.sql


<!-- insert sample data: -->

\i insert.sql


<!-- run read/update/delete queries -->

\i read.sql
\i update.sql
\i delete.sql
#   P S Q L - C R U D  
 