--Key Characteristics of @@ERROR
--Value: After each Transact-SQL statement, @@ERROR holds the error number of that statement.
--If the statement executed successfully, @@ERROR returns 0.

--Reset After Each Statement : @@ERROR is reset to 0 after each T-SQL statement, regardless of whether an error occurred.
--This means you must check @@ERROR immediately after the statement that might have caused an error.

--Usage: It's often used in conjunction with the IF statement to check for errors
--and take appropriate action.

Declare @Error_Sudeen int;

insert into Sales.Orders (id) values ('Salah');

set @Error_Sudeen = @@ERROR;

if( not(@Error_Sudeen = 0))
	print 'ERROR : An Error Occurred With Number =>'+ cast(@Error_Sudeen as Varchar); 
