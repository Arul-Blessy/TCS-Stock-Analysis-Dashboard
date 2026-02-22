USE TCS_Project;

-- This shows the top 5 days with the most trading volume
SELECT Date, Volume, Close AS Price_That_Day
FROM tcs_stock_history
ORDER BY Volume DESC
LIMIT 5;