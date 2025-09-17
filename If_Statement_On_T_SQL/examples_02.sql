
-- use if-else statement with And clause
declare @F_Name varchar(15) = 'Sabri';
declare @L_Name varchar(20) = 'Zekkour';


if(@F_Name ='Sabri' And @L_Name = 'Zekkour')
	print 'your name is valid';
else
	print 'your name is not valid'
go

-- use if-else statement with OR clause
declare @degree char = 'c';


if (@degree = 'A' or @degree = 'B')
	print 'you are passed';
else
	print 'you are failed'
go

-- use if-else statement with Not Clause
declare @status bit = 1;

if(not (@status = 0) )
	print 'user is Active'
else
	print 'user is Inactive'
go
