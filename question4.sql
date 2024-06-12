-- Question 4. 

USE dealershipdatabase;

SELECT d.dealershipName, d.address,.phoneNumber
FROM Vehicle v
INNER JOIN Dealerships d ON v.dealershipID = d.dealershipID
WHERE v.VIN = '5LMFU27588LJ12536';  