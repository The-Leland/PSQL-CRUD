


UPDATE Companies
SET company_name = 'Acme Technologies'
WHERE company_id = 'company-id';

UPDATE Categories
SET category_name = 'Consumer Electronics'
WHERE category_id = 'category-id';

UPDATE Products
SET price = 249,
    description = 'Updated gadget',
    active = false
WHERE product_id = 'product-id';

UPDATE Warranties
SET warranty_months = '36'
WHERE warranty_id = 'warranty-id';

UPDATE ProductsCategoriesXref
SET category_id = 'category-id'
WHERE product_id = 'product-id' AND category_id = 'old-category-id';
