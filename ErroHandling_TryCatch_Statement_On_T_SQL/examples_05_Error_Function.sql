
--- the princple of handling error without crash the system


begin try
		insert into Employees3(EmployeeID,Name,Position)
		values (1,'ssa','sds');
end try
begin catch
		print error_number();
end catch


