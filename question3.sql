-- Question 3. Find a car using the VIN

SELECT 
    VIN,
    yearOfVehicle,
    make,
    model,
    vehicleType,
    color,
    odometer,
    price,
    dealershipID
FROM 
    Vehicle
WHERE 
    VIN = 'WAULF78KX9N012345';  
    -- this will return all information for the car with that vin