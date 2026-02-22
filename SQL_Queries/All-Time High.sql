SELECT Date, High AS Highest_Price_Ever
FROM tcs_stock_history
WHERE High = (SELECT MAX(High) FROM tcs_stock_history);