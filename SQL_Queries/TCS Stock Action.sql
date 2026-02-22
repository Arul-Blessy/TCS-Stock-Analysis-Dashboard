SELECT SUM(Dividends) AS Total_Dividends_Paid
FROM tcs_stock_action;

SELECT Date, `Stock Splits`
FROM tcs_stock_action
WHERE `Stock Splits` > 0;


