CREATE PROCEDURE gradeDistribution()
BEGIN
    SELECT Name, ID  
    FROM Grades
    WHERE (Midterm1/2 + Midterm2/2) < Final AND Final > ((Midterm1 + Midterm2)*.25 + (Final)*.5)
    Order BY SUBSTRING(Name, 1, 3), ID ASC;
END