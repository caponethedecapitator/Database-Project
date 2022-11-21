USE EasyDelivery;

CREATE VIEW Annual_Top_3_Customers AS
SELECT Customer.First_Name, Customer.Last_Name, SUM(Orders.Subtotal) AS Total_Order_Subtotal
FROM ((Customer
INNER JOIN Payment ON Customer.Customer_ID = Payment.Customer_ID)
INNER JOIN Orders ON Orders.Order_ID = Payment.Order_ID)
WHERE Payment.Payment_Time >= '2021-12-09'
ORDER BY Total_Order_Subtotal DESC LIMIT 3;

DESCRIBE Annual_Top_3_Customers;
DROP VIEW Annual_Top_3_Customers;

CREATE VIEW Popular_Restaurant_Type AS
SELECT RestaurantType.Restaurant_Type, COUNT(Orders.Order_ID) AS Total_Orders
FROM (((Restaurant
INNER JOIN RestaurantType ON RestaurantType.Shop_ID = Restaurant.Shop_ID)
INNER JOIN Orders ON Orders.Shop_ID IN (SELECT Shop_ID FROM Restaurant))
INNER JOIN Payment ON Orders.Order_ID = Payment.Order_ID)
wHERE Payment.Payment_Time >= '2021-12-09'
GROUP BY Restaurant_Type
ORDER BY Total_Orders DESC;

DESCRIBE Popular_Restaurant_Type;
DROP VIEW Popular_Restaurant_Type;

CREATE VIEW Potential_Silver_Member AS
SELECT Customer.*, DeliveryAddress.Delivery_Address, COUNT(Payment.Order_ID) AS Number_of_Orders
FROM (((Customer
INNER JOIN DeliveryAddress ON DeliveryAddress.Customer_ID = Customer.Customer_ID)
INNER JOIN SilverMember ON Customer.Customer_ID NOT IN (SELECT Customer_ID FROM SilverMember))
INNER JOIN Payment ON Customer.Customer_ID = Payment.Customer_ID)
WHERE Payment.Payment_Time >= '2022-11-09'
GROUP BY Customer_ID
HAVING Number_of_Orders > 10;

DESCRIBE Potential_Silver_Member;
DROP VIEW Potential_Silver_Member;

CREATE VIEW Best_Area_Manager AS
SELECT Employee.*, PhoneNumber.Phone_Number, COUNT(MakeContract.Shop_ID) AS Number_of_Contracts
FROM ((((Employee
INNER JOIN AreaManager ON Employee.Employee_ID IN (SELECT Employee_ID FROM AreaManager))
INNER JOIN PhoneNumber ON PhoneNumber.Employee_ID = Employee.Employee_ID)
INNER JOIN Restaurant ON Restaurant.Restaurant_Area = AreaManager.Area)
INNER JOIN MakeContract ON (AreaManager.Employee_ID = MakeContract.Employee_ID
AND Restaurant.Shop_ID = MakeContract.Shop_ID))
WHERE MakeContract.Contract_Start_Time >= '2021-12-09'
GROUP BY Employee_ID
ORDER BY Number_of_Contracts DESC;

DESCRIBE Best_Area_Manager;
DROP VIEW Best_Area_Manager;

CREATE VIEW Top_Restaurants AS
SELECT Shop.*, RestaurantType.Restaurant_Type, COUNT(Orders.Order_ID) AS Total_Orders
FROM (((Shop
INNER JOIN Restaurant ON Shop.Shop_ID IN (SELECT Shop_ID FROM Restaurant))
INNER JOIN RestaurantType ON Restaurant.Shop_ID = RestaurantType.Shop_ID)
INNER JOIN Orders ON Orders.Shop_ID IN (SELECT Shop_ID FROM Restaurant))
INNER JOIN Payment ON Orders.Order_ID = Payment.Order_ID
WHERE Payment.Payment_Time >= '2022-11-09'
GROUP BY Restaurant_Type
ORDER BY Total_Orders DESC;

DESCRIBE Top_Restaurants;
DROP VIEW Top_Restaurants;