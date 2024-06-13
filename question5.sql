-- Question 5: Find all dealerships that have a certain vehicle type?

SELECT DISTINCT d.dealershipName, d.address
FROM Dealerships d
JOIN Vehicle v ON d.dealershipID = v.dealershipID
WHERE v.vehicleType = 'Sedan';

-- This will show all dealerships that have sedan's being sold

SELECT DISTINCT d.dealershipName, d.address
FROM Dealerships d
JOIN Vehicle v ON d.dealershipID = v.dealershipID
WHERE v.color = 'Blue';

-- This query will only show dealerships that have blue vehicles available

SELECT DISTINCT d.dealershipName, d.address
FROM Dealerships d
JOIN Vehicle v ON d.dealershipID = v.dealershipID
WHERE v.vehicleType = 'Truck' AND v.color = 'Black';

-- This will show dealerships that are selling Black Truck's
