


INSERT INTO Companies (company_name)
VALUES ('Acme Corp');

INSERT INTO Categories (category_name)
VALUES ('Electronics');

INSERT INTO Products (company_id, company_name, price, description, active)
VALUES (
    (SELECT company_id FROM Companies WHERE company_name = 'Acme Corp'),
    'Acme Corp',
    199,
    'High-quality gadget',
    true
);

INSERT INTO Warranties (product_id, warranty_months)
VALUES (
    (SELECT product_id FROM Products WHERE company_name = 'Acme Corp' AND description = 'High-quality gadget'),
    '24'
);

INSERT INTO ProductsCategoriesXref (product_id, category_id)
VALUES (
    (SELECT product_id FROM Products WHERE company_name = 'Acme Corp' AND description = 'High-quality gadget'),
    (SELECT category_id FROM Categories WHERE category_name = 'Electronics')
);
