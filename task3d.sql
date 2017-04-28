UPDATE Repairs
SET partCost = 100
WHERE license IN (
    SELECT license
    FROM Cars WHERE brand = 'Mercedes'
)
