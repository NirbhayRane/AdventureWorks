-------------------------------
-- DATABASE SCOPED CREDENTIAL
-------------------------------
CREATE DATABASE SCOPED CREDENTIAL credential_nirbhay
WITH IDENTITY = 'Managed Identity'


-------------------------
-- EXTERNAL DATA SOURCE
-------------------------
CREATE EXTERNAL DATA SOURCE Source_Silver
WITH
(
    LOCATION = 'https://mastoragedatalake.dfs.core.windows.net/silver',
    CREDENTIAL = credential_nirbhay
)

---------------------------------------------------------------------------------

CREATE EXTERNAL DATA SOURCE Source_Gold
WITH
(
    LOCATION = 'https://mastoragedatalake.dfs.core.windows.net/gold',
    CREDENTIAL = credential_nirbhay
)

-------------------------
-- EXTERNAL FILE FORMAT
-------------------------

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

-----------------------------------
-- CREATE EXTERNAL TABLE EXTSALES
-----------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = Source_Gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales

SELECT * FROM gold.extsales

-------------------------------------
-- CREATE EXTERNAL TABLE EXTRETURNS
-------------------------------------

CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = Source_Gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.returns

--------------------------------------
-- CREATE EXTERNAL TABLE EXTPRODUCTS
--------------------------------------

CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = Source_Gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.products

-----------------------------------------------
-- CREATE EXTERNAL TABLE EXTPRODUCTCATEGORIES
-----------------------------------------------

CREATE EXTERNAL TABLE gold.extproductcategories
WITH
(
    LOCATION = 'extproductcategories',
    DATA_SOURCE = Source_Gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.productcategories

--------------------------------------------------
-- CREATE EXTERNAL TABLE EXTPRODUCTSUBCATEGORIES
--------------------------------------------------

CREATE EXTERNAL TABLE gold.extproductsubcategories
WITH
(
    LOCATION = 'extproductsubcategories',
    DATA_SOURCE = Source_Gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.productsubcategories

--------------------------------------
-- CREATE EXTERNAL TABLE EXTCALENDAR
--------------------------------------

CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = Source_Gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.calendar

-----------------------------------------
-- CREATE EXTERNAL TABLE EXTTERRITORIES
-----------------------------------------

CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'extterritories',
    DATA_SOURCE = Source_Gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.territories

