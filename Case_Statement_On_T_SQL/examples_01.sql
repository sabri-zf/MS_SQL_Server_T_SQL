
-- case statement training : it's have one way to implement it 
-- executing on select statement 

select Name , 
	  case Employees.DepartmentID
		when 1 then 'Engineering'
		when 2 then 'Marketing'
		when 3 then 'IT'
	  else 'UnKnown'
	  end As Department_Name
from Employees