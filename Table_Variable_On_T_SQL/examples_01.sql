

-- Table Variable is temporary on momoery and scope of it is when eventually batch or stored procedure, function --
	----------------------------------------------------------------------------------------------------------


-- syntax :
	--------------------------------------------
--- Declare @Name_Of_Table table ( .... block...)
	--------------------------------------------


declare @EmployeeTable Table
(
ID int identity(1,1) primary key,
FullName nvarchar(50) not null,
Score bit null
)


insert into @EmployeeTable(FullName)
select top(7)Name from Employees3

select * from @EmployeeTable

update @EmployeeTable set Score = 1
where FullName like 'J_%'

select * from @EmployeeTable

-- manipulation with temporaries data to accomplish particular gola
update @EmployeeTable set FullName = 'The King'
where Score is null

select * from @EmployeeTable


  