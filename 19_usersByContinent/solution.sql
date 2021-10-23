CREATE PROCEDURE usersByContinent()
BEGIN
    SELECT DISTINCT continent, SUM(users) AS users
    FROM countries
    GROUP BY continent
    Order BY users DESC;
END