
 -- using Case Statement on nested to
 --achieve goal riase salary of employees problem


select Department, Salary , PerformanceRating
,case 
  when Department = 'HR' then
		case
			when PerformanceRating < 70 then Salary*1.1
			when PerformanceRating between 70 and 80 then Salary * 0.8
			when PerformanceRating >=90 then Salary * 0.5
		end
 when Department = 'IT' then
		case
			when PerformanceRating < 70 then Salary*1.5
			when PerformanceRating between 70 and 80 then Salary * 0.5
			when PerformanceRating >=90 then Salary * 0.3
		end

		else Salary
	end as bouns
from Employees2
order by  
    case 
	when PerformanceRating <= 70 then 1
	else 2
	end desc