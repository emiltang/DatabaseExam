SELECT firstname, lastname
FROM Employees
WHERE EID EXITS (
 
        -- Join Mechanic and Repairs, group by license and EID to find each 
        -- unique repair, calculate the total price for each repair and 
        -- find the maximum
        SELECT EID, MAX(partCost + hours * hourlyPrice)
        FROM Mechanic, Repairs
        GROUP BY licence, EID
)
