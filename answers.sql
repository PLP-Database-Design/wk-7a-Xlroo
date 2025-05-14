-- Question1
SELECT 
  OrderID,
  CustomerName,
  TRIM(value) AS Product
FROM (
  SELECT 
    OrderID, 
    CustomerName,
    unnest(string_to_array(Products, ',')) AS value
  FROM ProductDetail
) AS normalized;

-- Question2 

-- Orders table
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;
-- OrderItems table
SELECT OrderID, Product, Quantity
FROM OrderDetails;