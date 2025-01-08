use [databasename]
SELECT 
    DB_NAME() AS DatabaseName,
    SUM(size) * 8 / 1024 AS SizeInMB
FROM 
    sys.master_files
WHERE 
    database_id = DB_ID()
GROUP BY 
    database_id;
