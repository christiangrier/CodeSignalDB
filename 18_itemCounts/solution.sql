CREATE PROCEDURE itemCounts()
BEGIN
    SELECT DISTINCT item_name, item_type, COUNT(*)
    FROM availableItems
    GROUP BY item_name, item_type
    ORDER BY item_type ASC, item_name;
END