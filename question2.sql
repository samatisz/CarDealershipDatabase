-- Question 2. Find all vehciles for a specific dealership
USE dealershipdatabase;

SELECT 
    v.VIN,
    v.yearOfVehicle,
    v.make,
    v.model,
    v.vehicleType,
    v.color,
    v.odometer,
    v.price
FROM 
    Vehicle v
INNER JOIN 
    Dealerships d ON v.dealershipID = d.dealershipID
WHERE 
    d.dealershipID = 3;  