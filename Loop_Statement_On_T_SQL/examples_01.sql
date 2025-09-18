------------------------------------------------------
--- using loop (while) to doing cycle of reptation ---
------------------------------------------------------

declare @Counter tinyint = 1;


while (@Counter <= 5)
begin
   print 'Count Num :' + cast(@Counter as varchar);

   set @Counter = @Counter +1;
end


----------------------------------

print '----------------'

declare @EmployeeName varchar(50);
declare @EmployeeID int  = 1;
declare @Size tinyint;

set @Size = (select COUNT(EmployeeID) from Employees);

while (@EmployeeID <= @Size)
Begin
   select @EmployeeName = Name from Employees
   where EmployeeID = @EmployeeID;

   set @EmployeeID = @EmployeeID +1;

   print 'Name is = ' + @EmployeeName;
   set @EmployeeName = 'Empty'
end

