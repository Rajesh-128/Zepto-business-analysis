-- CREATE DATABASE ZEPTO;
-- USE ZEPTO
-- CREATE TABLE users (
    -- Month VARCHAR(20),
   --  Orders_Per_Day INT,
    -- Monthly_Orders BIGINT,
    -- Avg_Order_Value_INR INT,
    -- Monthly_Revenue_Cr DECIMAL(10,2),
    -- Delivery_Time_Min INT,
    -- Active_Cities INT,
    -- Dark_Stores INT,
    -- Customer_Retention_Percentage INT,
    -- App_Downloads_Million DECIMAL(5,2),
    -- Marketing_Spend_Cr DECIMAL(10,2),
    -- Net_Loss_Cr DECIMAL(10,2),
    -- Market_Share_Percentage INT,
    -- Funding_Raised_Million_USD DECIMAL(10,2)
-- );
-- INSERT INTO users VALUES
-- ('Jan-2024', '520000','16120000','410','661','12','10','350','61','2.1','85','115','21','0');
 --  ('Feb-2024','540000','15660000','415','650','12','10','360','62','2.0','82','112','22','0');
--  ('Mar-2024','560000','17360000','420','729','11','11','380','63','2.3','90','118','23','0');
-- ('Apr-2024', '590000', '17700000', '425', '752', '11','12','410', '64', '2.5', '95', '120', '24','0');
-- ('May-2024','610000','18910000','430','813','11','12','440','65','2.7','98','123','25','0');
-- ('Jun-2024','640000','19200000','435','835','10','13','470','66','3.1','110','125','26','665');
--   ('Jul-2024','750000','23250000','440','1023','10','14','520','67','3.4','118','128','27','0');
-- ('Aug-2024','780000','24180000','445','1076','10','15','560','68','3.6','122','132','28','340');
--   ('Sep-2024','800000','24000000','450','1080','10','15','590','69','3.8','126','135','28','0');
-- ('Oct-2024','850000','26350000','455','1199','9','16','630','70','4.0','135','138','29','0');
--   --  ('Nov-2024','900000','27000000','460','1242','9','17','680','71','4.3','140','142','30','350');
-- ('Dec-2024','950000','29450000','470','1384','9','18','750','73','4.8','150','145','31','0');
-- ('Jan-2025','980000','30380000','475','1443','9','18','780','74','5.0','152','148','31','0');
-- ('Feb-2025','1000000','29000000','480','1392','9','19','800','75','5.2','155','150','32','0');
-- ('Mar-2025','1050000','32550000','485','1578','8','20','850','76','5.5','160','152','33','0');


 -- 1. What is the total revenue generated in 2024–25?
SELECT SUM(Monthly_Revenue_Cr) AS Total_Revenue
 FROM users
ORDER BY Monthly_Revenue_Cr DESC
 LIMIT 14;

-- 2. Which month had the highest monthly revenue?
SELECT Month, Monthly_Revenue_Cr
FROM users
ORDER BY Monthly_Revenue_Cr DESC
LIMIT  14;

-- 3. Find the average order value across all months.
SELECT AVG(Avg_order_value_INR) AS Average_order_Value
From users;

-- 4.Which month recorded the maximum daily orders?
SELECT Month, Orders_Per_Day
FROM users
ORDER BY Orders_Per_Day DESC
LIMIT 14;

-- 5. Calculate total marketing spend for the year.
SELECT SUM(Marketing_Spend_Cr) AS total_marketing_spend
FROM users;

-- 6. Find the average delivery time. 
SELECT SUM(Delivery_Time_Min) AS Average_Delivery_Time
FROM users;

-- 7. Show months where customer retention was above 70%.
SELECT Month, Customer_Retention_Percentage
FROM users
WHERE Customer_Retention_Percentage > 70;
-- Show months where customer retention was above 70%.

-- 8. Calculate total funding raised by Zepto.
SELECT SUM(Funding_Raised_Million_USD) AS Total_Funding
FROM Users;

-- 9. Find the growth in dark stores from Jan 2024 to Mar 2025.
SELECT 
MAX(Dark_Stores) - MIN(Dark_Stores) AS Growth_In_Dark_stores 
FROM users;

-- 10. Which month had the lowest net loss? 
SELECT Month, Net_Loss_Cr
From users
ORDER BY Net_Loss_Cr ASC 
LIMIT 5;

SELECT * FROM users;