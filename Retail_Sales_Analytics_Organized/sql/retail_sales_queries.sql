SELECT * FROM "Sample - Superstore"
SELECT * FROM "Sample - Superstore" WHERE Category ="Furniture";
SELECT * FROM "Sample - Superstore" WHERE Sales>1000;
SELECT * FROM "Sample - Superstore" WHERE city = "Chicago";
SELECT * FROM "Sample - Superstore" WHERE city = "New York City";
SELECT * From "Sample - Superstore" Where Profit>500;
SELECT * FROM "Sample - Superstore" WHERE Category ="Furniture" AND Sales > 500;
SELECT * FROM "Sample - Superstore" WHERE Category = "Technology" AND Profit > 100;
SELECT * FROM "Sample - Superstore" WHERE Category = "Furniture" OR Category = "Technology";
SELECT * FROM "Sample - Superstore" WHERE Category IN ("Furniture", "Technology", "Office Supplies");
SELECT * FROM "Sample - Superstore" WHERE Region IN ("West", "East");
SELECT * FROM "Sample - Superstore" WHERE Category != "Furniture";
SELECT * FROM "Sample - Superstore" WHERE Sales BETWEEN 500 AND 1000;
SELECT * FROM "Sample - Superstore" WHERE Profit BETWEEN 100 AND 500;
SELECT * FROM "Sample - Superstore" WHERE Discount > 0.20;
SELECT * FROM "Sample - Superstore" WHERE Discount BETWEEN 0.10 AND 0.30;
SELECT * FROM "Sample - Superstore" WHERE LIKE "%Holmes Odor Grabber%";
SELECT *
FROM "Sample - Superstore"
ORDER BY Sales DESC
LIMIT 10;
SELECT count(*) FROM "Sample - Superstore"
SELECT COUNT(*) AS Loss_Making_Orders
FROM "Sample - Superstore"
WHERE Profit < 0;

SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
ORDER BY Total_Profit DESC;

SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
HAVING SUM(Profit) > 0
ORDER BY Total_Profit DESC;

SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC
LIMIT 10;


SELECT 
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
HAVING SUM(Profit) < 100
ORDER BY Total_Profit ASC;
 
SELECT *FROM "Sample - Superstore" WHERE Category = "Technology" AND Profit > 0;
SELECT *FROM "Sample - Superstore" WHERE Sales > 1000 AND Profit > 100;
SELECT *FROM "Sample - Superstore" WHERE Sales > 1000 AND Profit < 0;
SELECT *FROM "Sample - Superstore" WHERE Discount > 0.30 AND Profit < 0;
SELECT *FROM "Sample - Superstore" WHERE Customer Name LIKE "A%";
SELECT *
FROM "Sample - Superstore"
ORDER BY Profit DESC
LIMIT 10;
SELECT TOP 10*
FROM "Sample - Superstore"
ORDER BY Profit DESC;
SELECT * FROM "Sample - Superstore"
WHERE Sales IS NULL;
SELECT * FROM "Sample - Superstore"
WHERE Profit IS NOT NULL;
SELECT *
FROM "Sample - Superstore"
WHERE Profit > 0
ORDER BY Profit DESC;
SELECT *
FROM "Sample - Superstore"
ORDER BY Profit DESC
LIMIT 10;
SELECT *
FROM "Sample - Superstore"
WHERE Profit < 0
ORDER BY Profit ASC
LIMIT 10;
SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State;
SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
HAVING SUM(Profit) < 0;
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY Category;
SELECT
    [Sub-Category],
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY [Sub-Category]
ORDER BY Total_Profit DESC;
SELECT
    [Sub-Category],
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY [Sub-Category]
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM "Sample - Superstore"
GROUP BY Category;
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM "Sample - Superstore"
GROUP BY Category
HAVING (SUM(Profit) / SUM(Sales)) * 100 < 10;
SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
HAVING SUM(Sales) > 10000
AND SUM(Profit) < 0
ORDER BY Total_Profit ASC;



SELECT `Order ID`, `Order Date`, `Customer Name`, `Category`, `Sales`, `Profit`
FROM "Sample - Superstore"
WHERE `Category` = "Technology" 
  AND `Sales` > 1000
ORDER BY `Sales` DESC;


SELECT `Order ID`, `Product Name`, `Sales`, `Discount`, `Profit`
FROM "Sample - Superstore"
WHERE `Profit` < 0
ORDER BY `Profit` ASC

SELECT `Order ID`, `Customer Name`, `Region`, `Discount`, `Profit`
FROM "Sample - Superstore"
WHERE `Discount` > 0.20 
  AND `Region` = "Central";
  
SELECT DISTINCT `Customer ID`, `Customer Name`, `Segment`, `City`, `State`
FROM "Sample - Superstore"
WHERE `Segment` IN ("Corporate", "Home Office")
  AND `State` IN ("California", "New York");
  
SELECT `Customer ID`, `Customer Name`, 
       ROUND(SUM(`Sales`), 2) AS Total_Sales,
       ROUND(SUM(`Profit`), 2) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY `Customer ID`, `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Category`, `Sub-Category`, 
       ROUND(SUM(`Sales`), 2) AS Total_Sales,
       ROUND(SUM(`Profit`), 2) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY `Category`, `Sub-Category`
HAVING SUM(`Profit`) < 0
ORDER BY Total_Profit ASC;

SELECT `Order ID`, `Order Date`, `Ship Date`, `Ship Mode`, `Sales`
FROM "Sample - Superstore" WHERE profit >100
LIMIT 10;

SELECT `Region`,
       COUNT(DISTINCT `Order ID`) AS Total_Orders,
       ROUND(SUM(`Sales`), 2) AS Total_Sales,
       ROUND(SUM(`Profit`), 2) AS Total_Profit,
       ROUND(SUM(`Profit`) / SUM(`Sales`) * 100, 2) AS Profit_Margin_PCT
FROM "Sample - Superstore"
GROUP BY `Region`
ORDER BY Total_Profit DESC;



SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
ORDER BY Total_Profit DESC;

SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
HAVING SUM(Profit) > 0
ORDER BY Total_Profit DESC;

SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC
LIMIT 10;


SELECT 
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM "Sample - Superstore"
GROUP BY State
HAVING SUM(Profit) < 100
ORDER BY Total_Profit ASC;

