CREATE PROCEDURE habitatArea()
BEGIN
    SET @poly = CONCAT('MULTIPOINT(',
            (SELECT GROUP_CONCAT(CONCAT(x, ' ', y) SEPARATOR ',')
            FROM places),')');
            
    SET @poly = REPLACE(@poly, ';', ',');
        
    SELECT ST_AREA(ST_ConvexHull(ST_GeomFromText(@poly))) AS area;
END