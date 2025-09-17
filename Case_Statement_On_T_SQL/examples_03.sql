 --- using Search case to find the approptiate salar to increase it 
 update Employees2
 set Salary = 
		case 
		when Salary <300 then Salary*1.3
		when Salary between 1000 and 1900 then Salary * 1.4
		when Salary between 30000 and 40000 then Salary * 1.1
		else Salary
		end 

