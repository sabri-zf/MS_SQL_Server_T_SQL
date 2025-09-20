
-- Temporary Table is a physical database on SQL server,it's provide store data temporarly on Disk
   -----------------------------------------------------------------------------------------------

   -- syntax :  create table #Table_Name  ( .... Block ...) --> local Connection
   -- syntax :  crate Table ##Table_Name  (.... Block ....) --> global connection
    


  insert into #Student(Name)
  values ('Sabri')
  insert into #Student(Name)
  values ('Mohammed')
  insert into #Student(Name)
  values ('Ali')
  go 


  insert into #Student
  select E.Name  from Employees7 as E
go

select * from #Student
go 

declare @TotalOfMemebers tinyint;

select @TotalOfMemebers = count(*) from #Student;

select count (*) As SpecificStudent, @TotalOfMemebers as Total_Memebers from #Student
where Name like 'S_%'
go 


--- best practice ( clean up The temporary Table When you're finished and you don't needing used anymore ==> by Drop Keyword)

-- Drop #Student

