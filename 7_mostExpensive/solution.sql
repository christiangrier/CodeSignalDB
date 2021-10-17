CREATE PROCEDURE mostExpensive()
BEGIN
    SELECT name 
    FROM Products 
    ORDER BY price*quantity DESC,
    name
    Limit 1;
END