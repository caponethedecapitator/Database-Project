DROP DATABASE EasyDelivery;
CREATE DATABASE EasyDelivery;
USE EasyDelivery;

CREATE TABLE Customer(
Customer_ID VARCHAR(6) NOT NULL,
CHECK(REGEXP_LIKE(Customer_ID, 'C[0-9]{5}')),
First_Name VARCHAR(30) NOT NULL,
Middle_Name VARCHAR(30),
Last_Name VARCHAR(30) NOT NULL,
Joining_Date DATE NOT NULL,
CHECK(Joining_Date <= '2022-12-12'),
Phone_Number VARCHAR(10) NOT NULL,
CHECK(REGEXP_LIKE(Phone_Number, '[0-9]{10}')),
PRIMARY KEY(Customer_ID)
);

DESCRIBE Customer;
-- DROP TABLE Customer cascade;

CREATE TABLE DeliveryAddress(
Customer_ID VARCHAR(6) NOT NULL,
Delivery_Address VARCHAR(200) NOT NULL,
PRIMARY KEY(Customer_ID, Delivery_Address),
FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE
);

DESCRIBE DeliveryAddress;
-- DROP TABLE DeliveryAddress;

CREATE TABLE PremiumMember(
Premium_Member_ID VARCHAR(6) NOT NULL,
CHECK(REGEXP_LIKE(Premium_Member_ID, 'P[0-9]{5}')),
PRIMARY KEY(Premium_Member_ID)
);

DESCRIBE PremiumMember;
-- -- DROP TABLE PremiumMember;

CREATE TABLE Employee(
Employee_ID VARCHAR(4) NOT NULL,
CHECK(REGEXP_LIKE(Employee_ID, 'E[0-9]{3}')),
First_Name VARCHAR(30) NOT NULL,
Middle_Name VARCHAR(30),
Last_Name VARCHAR(30) NOT NULL,
Address VARCHAR(200) NOT NULL,
Gender CHAR(1) NOT NULL,
CHECK (Gender = 'F' OR Gender = 'M'),
Date_of_Birth DATE NOT NULL,
CHECK(Date_of_Birth <= '2006-12-12'),
Designation_Start_Date DATE NOT NULL,
CHECK(Designation_Start_Date <= '2022-12-12'),
Premium_Member_ID VARCHAR(6),
PRIMARY KEY(Employee_ID),
FOREIGN KEY(Premium_Member_ID) REFERENCES PremiumMember(Premium_Member_ID) ON DELETE SET NULL
);

DESCRIBE Employee;
-- -- DROP TABLE Employee;

CREATE TABLE PhoneNumber(
Employee_ID VARCHAR(4) NOT NULL,
Phone_Number VARCHAR(10) NOT NULL,
CHECK(REGEXP_LIKE(Phone_Number, '[0-9]{10}')),
PRIMARY KEY(Employee_ID, Phone_Number),
FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE
);

DESCRIBE PhoneNumber;
-- -- DROP TABLE PhoneNumber;

CREATE TABLE OrdinaryCustomer(
Customer_ID VARCHAR(6) NOT NULL,
PRIMARY KEY(Customer_ID),
FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE
);

DESCRIBE OrdinaryCustomer;
-- -- DROP TABLE OrdinaryCustomer;

CREATE TABLE SilverMember(
Customer_ID VARCHAR(6) NOT NULL,
Premium_Member_ID VARCHAR(6),
PRIMARY KEY(Customer_ID),
FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE,
FOREIGN KEY(Premium_Member_ID) REFERENCES PremiumMember(Premium_Member_ID) ON DELETE SET NULL
);

DESCRIBE SilverMember;
-- -- DROP TABLE SilverMember;

CREATE TABLE Staff(
Employee_ID VARCHAR(4) NOT NULL,
PRIMARY KEY(Employee_ID),
FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE
);

DESCRIBE Staff;
-- DROP TABLE Staff;

CREATE TABLE AreaManager(
Employee_ID VARCHAR(4) NOT NULL,
Area VARCHAR(20) NOT NULL,
PRIMARY KEY(Employee_ID),
FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE
);

DESCRIBE AreaManager;
-- DROP TABLE AreaManager;

CREATE TABLE Deliverer(
Employee_ID VARCHAR(4) NOT NULL,
Supervisor_ID VARCHAR(4),
PRIMARY KEY(Employee_ID),
FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE,
FOREIGN KEY(Supervisor_ID) REFERENCES AreaManager(Employee_ID) ON DELETE SET NULL
);

DESCRIBE Deliverer;
-- DROP TABLE Deliverer;

CREATE TABLE MemberCard(
Card_ID VARCHAR(10) NOT NULL,
CHECK(REGEXP_LIKE(Card_ID, '[0-9]{10}')),
Issued_Date DATE NOT NULL,
CHECK(Issued_Date <= '2022-12-12'),
Employee_ID VARCHAR(4),
Customer_ID VARCHAR(6) NOT NULL,
PRIMARY KEY(Card_ID),
FOREIGN KEY(Employee_ID) REFERENCES Staff(Employee_ID) ON DELETE SET NULL,
FOREIGN KEY(Customer_ID) REFERENCES SilverMember(Customer_ID) ON DELETE CASCADE
);

DESCRIBE MemberCard;
-- DROP TABLE MemberCard;

CREATE TABLE Vehicle(
Plate_Number VARCHAR(7) NOT NULL,
Maker VARCHAR(20) NOT NULL,
Model VARCHAR(20) NOT NULL,
Color VARCHAR(20) NOT NULL,
Employee_ID VARCHAR(4),
PRIMARY KEY(Plate_Number),
FOREIGN KEY(Employee_ID) REFERENCES Deliverer(Employee_ID) ON DELETE SET NULL
);

DESCRIBE Vehicle;
-- DROP TABLE Vehicle;

CREATE TABLE MealPass(
Premium_Member_ID VARCHAR(6) NOT NULL,
Effective_Date DATE,
CHECK (Effective_Date <= '2022-12-12'),
Expiration_Date DATE,
CHECK (Effective_Date <= Expiration_Date),
PRIMARY KEY(Premium_Member_ID),
FOREIGN KEY(Premium_Member_ID) REFERENCES PremiumMember(Premium_Member_ID) ON DELETE CASCADE
);

DESCRIBE MealPass;
-- DROP TABLE MealPass;

CREATE TABLE Shop(
Shop_ID VARCHAR(5) NOT NULL,
CHECK(REGEXP_LIKE(Shop_ID, '[0-9]{5}')),
Name VARCHAR(50) NOT NULL,
Address VARCHAR(200) NOT NULL,
Business_Phone_Number VARCHAR(10) NOT NULL,
CHECK(REGEXP_LIKE(Business_Phone_Number, '[0-9]{10}')),
Employee_ID VARCHAR(4),
PRIMARY KEY(Shop_ID),
FOREIGN KEY(Employee_ID) REFERENCES AreaManager(Employee_ID) ON DELETE SET NULL
);

DESCRIBE Shop;
-- DROP TABLE Shop;

CREATE TABLE OpeningTime(
Shop_ID VARCHAR(5) NOT NULL,
Opening_Time VARCHAR(20) NOT NULL,
PRIMARY KEY(Shop_ID, Opening_Time),
FOREIGN KEY(Shop_ID) REFERENCES Shop(Shop_ID) ON DELETE CASCADE
);

DESCRIBE OpeningTime;
-- DROP TABLE OpeningTime;

CREATE TABLE ClosingTime(
Shop_ID VARCHAR(5) NOT NULL,
Closing_Time VARCHAR(20) NOT NULL,
PRIMARY KEY(Shop_ID, Closing_Time),
FOREIGN KEY(Shop_ID) REFERENCES Shop(Shop_ID) ON DELETE CASCADE
);

DESCRIBE ClosingTime;
-- DROP TABLE ClosingTime;

CREATE TABLE MakeContract(
Employee_ID VARCHAR(4) NOT NULL,
Shop_ID VARCHAR(5) NOT NULL,
Contract_Start_Time DATETIME NOT NULL,
CHECK (Contract_Start_Time <= '2022-12-12'),
PRIMARY KEY(Employee_ID, Shop_ID),
FOREIGN KEY(Employee_ID) REFERENCES AreaManager(Employee_ID) ON DELETE CASCADE,
FOREIGN KEY(Shop_ID) REFERENCES Shop(Shop_ID) ON DELETE CASCADE
);

DESCRIBE MakeContract;
-- DROP TABLE MakeContract;

CREATE TABLE Promotion(
Promotion_Code VARCHAR(10) NOT NULL,
Promotion_Code_Description VARCHAR(100),
Customer_ID VARCHAR(6),
Shop_ID VARCHAR(5) NOT NULL,
PRIMARY KEY(Promotion_Code),
FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE SET NULL,
FOREIGN KEY(Shop_ID) REFERENCES Shop(Shop_ID) ON DELETE CASCADE
);

DESCRIBE Promotion;
-- DROP TABLE Promotion;

CREATE TABLE Comment(
Customer_ID VARCHAR(6) NOT NULL,
Shop_ID VARCHAR(5) NOT NULL,
Rating_Score INT(1) NOT NULL,
CHECK(Rating_Score BETWEEN 1 AND 5),
Comment_Contents VARCHAR(300),
PRIMARY KEY(Customer_ID, Shop_ID),
FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE,
FOREIGN KEY(Shop_ID) REFERENCES Shop(Shop_ID) ON DELETE CASCADE
);

DESCRIBE Comment;
-- DROP TABLE Comment;

CREATE TABLE Restaurant(
Shop_ID VARCHAR(5) NOT NULL,
Restaurant_Area VARCHAR(20) NOT NULL,
PRIMARY KEY(Shop_ID),
FOREIGN KEY(Shop_ID) REFERENCES Shop(Shop_ID) ON DELETE CASCADE
);

DESCRIBE Restaurant;
-- DROP TABLE Restaurant;

CREATE TABLE RestaurantType(
Shop_ID VARCHAR(5) NOT NULL,
Restaurant_Type VARCHAR(20) NOT NULL,
PRIMARY KEY(Shop_ID, Restaurant_Type),
FOREIGN KEY(Shop_ID) REFERENCES Restaurant(Shop_ID) ON DELETE CASCADE
);

DESCRIBE RestaurantType;
-- DROP TABLE RestaurantType;

CREATE TABLE Supermarket(
Shop_ID VARCHAR(5) NOT NULL,
PRIMARY KEY(Shop_ID),
FOREIGN KEY(Shop_ID) REFERENCES Shop(Shop_ID) ON DELETE CASCADE
);

DESCRIBE Supermarket;
-- DROP TABLE Supermarket;

CREATE TABLE Product(
Product_ID VARCHAR(10) NOT NULL,
Shop_ID VARCHAR(5) NOT NULL,
Product_Name VARCHAR(30) NOT NULL,
Product_Description VARCHAR(100),
Stock_Number INT(10) NOT NULL,
CHECK (Stock_Number >= 0),
PRIMARY KEY(Product_ID, Shop_ID),
FOREIGN KEY(Shop_ID) REFERENCES Supermarket(Shop_ID) ON DELETE CASCADE
);

DESCRIBE Product;
-- DROP TABLE Product;

CREATE TABLE Sell(
Shop_ID VARCHAR(5) NOT NULL,
Product_ID VARCHAR(10) NOT NULL,
PRICE FLOAT(8, 2) NOT NULL,
CHECK(PRICE > 0),
PRIMARY KEY(Shop_ID, Product_ID),
FOREIGN KEY(Shop_ID) REFERENCES Supermarket(Shop_ID) ON DELETE CASCADE,
FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID) ON DELETE CASCADE
);

DESCRIBE Sell;
-- DROP TABLE Sell;

CREATE TABLE Orders(
Order_ID VARCHAR(10) NOT NULL UNIQUE,
CHECK(REGEXP_LIKE(Order_ID, '[0-9]{9}')), #Pound key is the delimiter
Shop_ID VARCHAR(5) NOT NULL,
Employee_ID VARCHAR(4) NOT NULL,
Plate_Number VARCHAR(7) NOT NULL,
Subtotal FLOAT(10,2) NOT NULL,
CHECK(Subtotal > 0),
Order_Content VARCHAR(100) NOT NULL,
PRIMARY KEY(Order_ID, Shop_ID, Employee_ID, Plate_Number),
FOREIGN KEY(Shop_ID) REFERENCES Shop(Shop_ID) ON DELETE CASCADE,
FOREIGN KEY(Employee_ID) REFERENCES Deliverer(Employee_ID) ON DELETE CASCADE,
FOREIGN KEY(Plate_Number) REFERENCES Vehicle(Plate_Number) ON DELETE CASCADE
);


DESCRIBE Orders;
-- DROP TABLE Orders CASCADE;

CREATE TABLE Payment(
Payment_Confirm_Number VARCHAR(10) NOT NULL,
CHECK(REGEXP_LIKE(Payment_Confirm_Number, '[0-9]{10}')),
Payment_Time DATETIME NOT NULL,
CHECK (Payment_Time <= '2022-12-12'),
Payment_Type VARCHAR(10) NOT NULL,
Customer_ID VARCHAR(6) NOT NULL,
Order_ID VARCHAR(10) NOT NULL,
PRIMARY KEY(Payment_Confirm_Number),
FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE,
FOREIGN KEY(Order_ID) REFERENCES Orders(Order_ID) ON DELETE CASCADE
);

DESCRIBE Payment;
-- DROP TABLE Payment CASCADE;

-- DROP DATABASE EasyDelivery;
-- DROP TABLE Customer cascade;
-- DROP TABLE DeliveryAddress;
-- DROP TABLE PremiumMember;
-- DROP TABLE Employee;
-- DROP TABLE PhoneNumber;
-- DROP TABLE OrdinaryCustomer;
-- DROP TABLE SilverMember;
-- DROP TABLE Staff;
-- DROP TABLE AreaManager;
-- DROP TABLE Deliverer;
-- DROP TABLE MemberCard;
-- DROP TABLE Vehicle;
-- DROP TABLE MealPass;
-- DROP TABLE Shop;
-- DROP TABLE OpeningTime;
-- DROP TABLE ClosingTime;
-- DROP TABLE MakeContract;
-- DROP TABLE Promotion;
-- DROP TABLE Comment;
-- DROP TABLE Restaurant;
-- DROP TABLE RestaurantType;
-- DROP TABLE Supermarket;
-- DROP TABLE Product;
-- DROP TABLE Sell;
-- DROP TABLE Orders CASCADE;
-- DROP TABLE Payment CASCADE;