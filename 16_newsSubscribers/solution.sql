CREATE PROCEDURE newsSubscribers()
BEGIN
    SELECT DISTINCT d.subscriber
    FROM 
        (SELECT * FROM full_year 
        UNION 
        SELECT * FROM half_year) AS d
    WHERE d.newspaper LIKE '%Daily%'
    ORDER BY d.subscriber;
END