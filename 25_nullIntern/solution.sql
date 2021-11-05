CREATE PROCEDURE nullIntern()
BEGIN
    SELECT COUNT(*) AS number_of_nulls
    FROM departments
    WHERE description REGEXP '^[[:space:]]*(NULL|nil|-)[[:space:]]*$' OR description IS NULL;
END