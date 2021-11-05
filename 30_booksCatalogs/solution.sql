CREATE PROCEDURE booksCatalogs()
BEGIN
    SELECT DISTINCT EXTRACTVALUE(xml_doc, '/catalog/book[1]/author') as author 
    FROM catalogs
    ORDER BY author;
END