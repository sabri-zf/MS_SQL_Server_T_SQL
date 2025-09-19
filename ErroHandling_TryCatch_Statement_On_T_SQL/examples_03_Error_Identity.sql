
-- sepacial variable ==> @@ERROR
-- it's used on oldest system SQL, before come-in Try catch to handle errors

--The @@ERROR function in T-SQL (Transact-SQL used in Microsoft SQL Server) is a system function that returns the error 
--number of the last Transact-SQL statement executed.
--It's an older method of error checking in SQL Server, often used before the introduction of the TRY...CATCH construct.



insert into Departments(DepartmentID,Name) 
values (1,'jonh')

declare @ErrorCatcher int  = @@ERROR;

--set @ErrorCatcher ;

if( @ErrorCatcher <> 0)
	begin
			print 'An ERROR OCCURRED ';
			print '---';
			print 'ERROR NUMBER : '+ cast(@ErrorCatcher as varchar);
	end

