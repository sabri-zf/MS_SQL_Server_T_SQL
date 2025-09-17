
-- using Case Statement With Grouping datasets

select PerformanceCategory, COUNT(*)as Total_Employees ,
AVG(Salary) as SalaryAverge
from (select Name,Salary,
	case 
	when PerformanceRating > 70 then 'High'
	when PerformanceRating between 55 and 70 then 'Medium'
	else 'Low'
	end PerformanceCategory
from Employees2
)R1
group by PerformanceCategory
order by Total_Employees 
