SELECT firstname, lastname, max(partCost + hours * hourlyPrice)
AS most_Expensive_Repair
FROM Mechanic NATURAL JOIN Repairs, Employees
GROUP BY firstname, lastname
ORDER BY most_Expensive_Repair DESC
LIMIT 1

