


CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE Companies (
    company_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    company_name VARCHAR NOT NULL UNIQUE
);

CREATE TABLE Categories (
    category_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    category_name VARCHAR NOT NULL UNIQUE
);

CREATE TABLE Products (
    product_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    company_id UUID REFERENCES Companies(company_id) ON DELETE CASCADE,
    company_name VARCHAR NOT NULL,
    price INTEGER,
    description VARCHAR,
    active BOOLEAN DEFAULT true
);

CREATE TABLE ProductsCategoriesXref (
    product_id UUID REFERENCES Products(product_id) ON DELETE CASCADE,
    category_id UUID REFERENCES Categories(category_id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, category_id)
);

CREATE TABLE Warranties (
    warranty_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    product_id UUID UNIQUE REFERENCES Products(product_id) ON DELETE CASCADE,
    warranty_months VARCHAR NOT NULL
);
