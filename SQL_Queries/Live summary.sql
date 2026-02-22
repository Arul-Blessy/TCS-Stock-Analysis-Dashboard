-- Step 1: Tell MySQL to use your database
USE TCS_Project;

-- Step 2: Create the summary using the actual column names (zip and 400001)
CREATE OR REPLACE VIEW tcs_latest_summary AS
SELECT 
    h.Date, 
    h.Close AS Today_Price, 
    i.`400001` AS Company_Sector -- '400001' is the name MySQL gave the info column
FROM tcs_stock_history h
JOIN tcs_stock_info i ON i.zip = 'sector'
WHERE h.Date = (SELECT MAX(Date) FROM tcs_stock_history);

-- Step 3: View the final result
SELECT * FROM tcs_latest_summary; 