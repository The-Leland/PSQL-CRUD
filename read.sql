


SELECT * FROM Companies;

SELECT * FROM Categories;

SELECT * FROM Products;

SELECT * FROM Warranties;

SELECT * FROM Products WHERE active = true;

SELECT * FROM Products WHERE company_id = 'company-id';

SELECT * FROM Companies WHERE company_id = 'company-id';

SELECT 
    c.*, 
    p.product_id, 
    p.company_name, 
    p.price, 
    p.description, 
    p.active
FROM Categories c
LEFT JOIN ProductsCategoriesXref pcx ON c.category_id = pcx.category_id
LEFT JOIN Products p ON pcx.product_id = p.product_id
WHERE c.category_id = 'category-id';

SELECT 
    p.*, 
    w.warranty_id, 
    w.warranty_months, 
    ARRAY(
        SELECT category_name
        FROM ProductsCategoriesXref pcx
        JOIN Categories c ON pcx.category_id = c.category_id
        WHERE pcx.product_id = p.product_id
    ) AS categories
FROM Products p
LEFT JOIN Warranties w ON p.product_id = w.product_id
WHERE p.product_id = 'product-id';

SELECT * FROM Warranties WHERE warranty_id = 'warranty-id';
