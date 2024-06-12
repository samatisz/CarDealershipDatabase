DROP DATABASE IF EXISTS DealershipDatabase;

CREATE DATABASE DealershipDatabase;

USE DealershipDatabase;

CREATE TABLE Dealerships (
 dealershipID int auto_increment,
 dealershipName varchar(50),
 address varchar(50),
 phoneNumber varchar(50),
 PRIMARY KEY (dealershipID)
);

CREATE TABLE Vehicle (
VIN varchar(50),
yearOfVehicle int,
make varchar(50),
model varchar(50),
vehicleType varchar(50),
color varchar(50),
odometer double,
price double,
dealershipID int,
FOREIGN KEY (dealershipID) REFERENCES Dealerships(dealershipID),
PRIMARY KEY (VIN)
);

CREATE TABLE Inventory(
dealershipID int,
VIN varchar(50),
FOREIGN KEY (dealershipID) REFERENCES Dealerships(dealershipID),
FOREIGN KEY (VIN) REFERENCES Vehicle(VIN)
);

CREATE TABLE salesContract(
salesID int auto_increment,
VIN varchar(50),
dealershipID int,
customerLastName varchar(50),
dateOfContract varchar(50),
PRIMARY KEY (salesID),
FOREIGN KEY (dealershipID) REFERENCES Dealerships(dealershipID),
FOREIGN KEY (VIN) REFERENCES Vehicle(VIN)
);

INSERT INTO Dealerships (dealershipName, address, phoneNumber)
VALUES ("S & M Used Cars", "823 Halazia Drive", "812-822-6282");

INSERT INTO Dealerships (dealershipName, address, phoneNumber)
VALUES ("JLT New Cars", "616 Sonic Road", "618-912-0112");
    
INSERT INTO Dealerships (dealershipName, address, phoneNumber)
VALUES ("Matz Mazda Mall", "127 Halla Halla Landing", "342-220-1240");

INSERT INTO Vehicle (VIN, yearOfVehicle, make, model, vehicleType, color, odometer, price)
VALUES ("1HGCM82633A123456", 2003, "Honda", "Accord", "Sedan", "Silver", 125000, 6500);

INSERT INTO Vehicle (VIN, yearOfVehicle, make, model, vehicleType, color, odometer, price)
VALUES ("5LMFU27588LJ12536", 2008, "Lincoln", "Navigator", "SUV", "Black", 90500, 15000);

INSERT INTO Vehicle (VIN, yearOfVehicle, make, model, vehicleType, color, odometer, price)
VALUES ("1G1ZE5ST3HF123789", 2017, "Chevrolet", "Malibu", "Sedan", "Blue", 35200, 18500);

INSERT INTO Vehicle (VIN, yearOfVehicle, make, model, vehicleType, color, odometer, price)
VALUES ("WAULF78KX9N012345", 2009, "Audi", "A4", "Sedan", "White", 70800, 11200);

INSERT INTO Vehicle (VIN, yearOfVehicle, make, model, vehicleType, color, odometer, price)
VALUES ("1C4PJMDS4FW512345", 2015, "Jeep", "Cherokee", "SUV", "Green", 47300, 20800);

INSERT INTO Vehicle (VIN, yearOfVehicle, make, model, vehicleType, color, odometer, price)
VALUES ("1FTFW1E11CFB12345", 2012, "Ford", "F-150", "Truck", "Black", 82400, 17000);

INSERT INTO salesContract (customerLastName, dateOfContract)
VALUES ("Vargas", "06/15/2019");

INSERT INTO salesContract (customerLastName, dateOfContract)
VALUES ("Boyd", "07/25/2019");


