-- Step 1: Tell MySQL to use your database
USE TCS_Project;

-- Step 2: Create a View that stacks your biggest achievements
CREATE OR REPLACE VIEW tcs_milestone_tracker AS
SELECT 
    'Dividends' AS Category, 
    SUM(Dividends) AS Value,
    'Total Cash Paid Per Share' AS Description
FROM tcs_stock_action

UNION ALL

SELECT 
    'Stock Splits' AS Category, 
    COUNT(*) AS Value,
    'Number of times shares multiplied' AS Description
FROM tcs_stock_action 
WHERE `Stock Splits` > 0

UNION ALL

SELECT 
    'Max Price' AS Category, 
    MAX(High) AS Value,
    'The Highest Price in TCS History' AS Description
FROM tcs_stock_history;

-- Step 3: View the final dashboard
SELECT * FROM tcs_milestone_tracker;