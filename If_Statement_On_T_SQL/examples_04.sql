
-- Using IF with EXISTS
--IF statements can be combined with 
--EXISTS to check for the existence of rows in a table 
--that meet a certain condition.


if(not exists( select top(1) Sales.SaleID from Sales where SaleAmount >= 300))
	print  'Exists it is work';
else
	print  'Exists it does not work'


		--Best Practices

--	Keep the logic within IF statements simple for better readability.
--	Avoid deeply nested IF statements when possible. Consider alternative structures like CASE statements or stored procedures.
--	Ensure conditions are clear and cover all expected cases.