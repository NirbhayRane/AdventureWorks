-------------------------
-- CREATE VIEW CALENDAR
-------------------------
CREATE VIEW gold.calendar
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://mastoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as QUERY1;
GO


--------------------------
-- CREATE VIEW CUSTOMERS
--------------------------
CREATE VIEW gold.customers
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://mastoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) as QUERY2;
GO


-------------------------
-- CREATE VIEW PRODUCTS
-------------------------
CREATE VIEW gold.products
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://mastoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as QUERY3;
GO


------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://mastoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as QUERY4;
GO


-----------------------
-- CREATE VIEW SALES
-----------------------
CREATE VIEW gold.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://mastoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as QUERY5;
GO


------------------------------
-- CREATE VIEW PRODUCT CATEGORIES
------------------------------
CREATE VIEW gold.productcategories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://mastoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
            FORMAT = 'PARQUET'
        ) as QUERY6;
GO


----------------------------
-- CREATE VIEW TERRITORIES
----------------------------
CREATE VIEW gold.territories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://mastoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as QUERY7;
GO


--------------------------------------
-- CREATE VIEW PRODUCT SUBCATEGORIES
--------------------------------------
CREATE VIEW gold.productsubcategories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://mastoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
            FORMAT = 'PARQUET'
        ) as QUERY8;
GO

