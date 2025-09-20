--@@ROWCOUNT is a system function in T-SQL (Transact-SQL used in Microsoft SQL Server) 
--that returns the number of rows affected by the last statement executed. This function is commonly used 
--to determine how many rows were impacted by the previous operation, 
--such as an INSERT, UPDATE, DELETE, or SELECT statement.


---------------------
--		example    --
---------------------

update Employees 
set DepartmentID = 4
where DepartmentID = 3;
-- Note : should @@rowcount come immdiately after operation


--|!| =>  it's wrong to set command after operation because , the @@ROWCOUNT, reset has value after any command coming next operation
-- print '' <== 'X' 

select @@ROWCOUNT;