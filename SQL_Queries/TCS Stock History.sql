-- 1. Setup
USE TCS_Project;
SET SQL_SAFE_UPDATES = 0;

-- 2. Cleanup (This removes any half-finished 'temp' tables from previous glitches)
DROP TABLE IF EXISTS tcs_stock_history_temp;

-- 3. The Clean Copy
-- This creates a fresh, unique list of data. 
-- We use MAX() to keep MySQL's "Strict Mode" happy.
CREATE TABLE tcs_stock_history_temp AS 
SELECT 
    Date, Open, High, Low, Close, Volume, 
    MAX(Dividends) AS Dividends, 
    MAX(`Stock Splits`) AS `Stock Splits`
FROM tcs_stock_history 
WHERE Volume > 0
GROUP BY Date, Open, High, Low, Close, Volume;

-- 4. The Big Swap
-- We delete the old messy one and move the clean one into its place
DROP TABLE IF EXISTS tcs_stock_history;
RENAME TABLE tcs_stock_history_temp TO tcs_stock_history;

-- 5. Final Verification
-- This shows you your clean, latest data
SELECT * FROM tcs_stock_history 
ORDER BY Date DESC 
LIMIT 10;

-- 6. Re-lock for safety
SET SQL_SAFE_UPDATES = 1;