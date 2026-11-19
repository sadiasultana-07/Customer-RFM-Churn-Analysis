
-- =====================================================
-- E-COMMERCE DATA ANALYTICS PROJECT
-- SQL DATA COMBINATION AND VALIDATION
-- SQL SERVER EXPRESS 2025
-- =====================================================


-- 1. CHECK ORIGINAL ROW COUNTS

SELECT COUNT(*) AS Rows_2009_2010
FROM dbo.[Year 2009-2010];

SELECT COUNT(*) AS Rows_2010_2011
FROM dbo.[Year 2010-2011];


-- 2. COMBINE BOTH YEARS AND CONVERT DATA TYPES

SELECT
    Invoice,
    StockCode,
    Description,
    Quantity,

    COALESCE(
        TRY_CONVERT(datetime2, InvoiceDate, 120),
        TRY_CONVERT(datetime2, InvoiceDate, 105)
    ) AS InvoiceDate,

    TRY_CONVERT(decimal(10,2), Price) AS Price,
    Customer_ID,
    Country,
    '2009-2010' AS SourceSheet

INTO dbo.RetailCombined

FROM dbo.[Year 2009-2010]

UNION ALL

SELECT
    Invoice,
    StockCode,
    Description,
    Quantity,

    COALESCE(
        TRY_CONVERT(datetime2, InvoiceDate, 120),
        TRY_CONVERT(datetime2, InvoiceDate, 105)
    ) AS InvoiceDate,

    TRY_CONVERT(decimal(10,2), Price) AS Price,
    Customer_ID,
    Country,
    '2010-2011' AS SourceSheet

FROM dbo.[Year 2010-2011];


-- 3. CHECK COMBINED DATA

SELECT COUNT(*) AS Total_Rows
FROM dbo.RetailCombined;

SELECT COUNT(*) AS Failed_Dates
FROM dbo.RetailCombined
WHERE InvoiceDate IS NULL;

SELECT COUNT(*) AS Failed_Prices
FROM dbo.RetailCombined
WHERE Price IS NULL;


-- 4. CHECK MISSING CUSTOMER IDs

SELECT COUNT(*) AS Missing_CustomerID
FROM dbo.RetailCombined
WHERE Customer_ID IS NULL;


-- 5. CHECK NEGATIVE OR ZERO QUANTITY

SELECT COUNT(*) AS Negative_Qty
FROM dbo.RetailCombined
WHERE Quantity <= 0;


-- 6. CHECK MISSING DESCRIPTIONS

SELECT COUNT(*) AS Missing_Description
FROM dbo.RetailCombined
WHERE Description IS NULL;


-- 7. IDENTIFY EXACT DUPLICATE ROWS

SELECT
    Invoice,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    Price,
    Customer_ID,
    Country,
    COUNT(*) AS ExactDupeCount

FROM dbo.RetailCombined

GROUP BY
    Invoice,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    Price,
    Customer_ID,
    Country

HAVING COUNT(*) > 1;
