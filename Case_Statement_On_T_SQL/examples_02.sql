
-- Search Case (More Flexible): using set conditions and get one Result for 
-- any-Row


select top(20)NEWID() as ID, Employees2.Name ,Employees2.Salary,
	case 
	when Salary < 300 then 'enitry-level'
	when Salary between 600 and 900 then 'Mid-Level'
	when Salary > 14000 then 'sinor-level'
	else 'Unknown'
	end career_Title
from Employees2
order by ID desc;