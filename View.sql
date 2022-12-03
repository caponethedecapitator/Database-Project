USE EasyDelivery;
DROP VIEW Annual_Top_3_Customers;
DROP VIEW Popular_Restaurant_Type;
DROP VIEW Potential_Silver_Member;
DROP VIEW Best_Area_Manager;
DROP VIEW Top_Restaurants;
CREATE VIEW Annual_Top_3_Customers AS
SELECT Customer.First_Name AS Customer_First_Name, Customer.Last_Name AS Customer_Last_Name, SUM(Orders.Subtotal) AS Total_Order_Subtotal
FROM ((Customer
INNER JOIN Payment ON Customer.Customer_ID = Payment.Customer_ID)
INNER JOIN Orders ON Orders.Order_ID = Payment.Order_ID)
WHERE Payment.Payment_Time >= '2021-12-09'
GROUP BY Customer.Customer_ID
ORDER BY Total_Order_Subtotal DESC LIMIT 3;

Select * from Annual_Top_3_Customers;
-- DROP VIEW Annual_Top_3_Customers;

CREATE VIEW Popular_Restaurant_Type AS
SELECT RestaurantType.Restaurant_Type, COUNT(Orders.Order_ID) AS Number_of_Orders
FROM (((Restaurant
INNER JOIN RestaurantType ON RestaurantType.Shop_ID = Restaurant.Shop_ID)
INNER JOIN Orders ON Orders.Shop_ID IN (SELECT Shop_ID FROM Restaurant))
INNER JOIN Payment ON Orders.Order_ID = Payment.Order_ID)
wHERE Payment.Payment_Time >= '2021-12-09'
GROUP BY RestaurantType.Restaurant_Type
ORDER BY Number_of_Orders DESC;

Select * from Popular_Restaurant_Type;
-- DROP VIEW Popular_Restaurant_Type;

DROP VIEW Potential_Silver_Member;
CREATE VIEW Potential_Silver_Member AS
SELECT Customer.First_Name AS Customer_First_Name, Customer.Middle_Name AS Customer_Middle_Name, 
Customer.Last_Name AS Customer_Last_Name, Customer.Joining_Date, Customer.Phone_Number, 
DeliveryAddress.Delivery_Address, COUNT(Payment.Order_ID) AS Number_of_Orders
FROM (((Customer
INNER JOIN DeliveryAddress ON DeliveryAddress.Customer_ID = Customer.Customer_ID)
INNER JOIN SilverMember ON Customer.Customer_ID NOT IN (SELECT Customer_ID FROM SilverMember))
INNER JOIN Payment ON Customer.Customer_ID = Payment.Customer_ID)
WHERE Payment.Payment_Time >= '2020-11-09'
GROUP BY Customer.Customer_ID
HAVING Number_of_Orders > 3;

Select * from Potential_Silver_Member;
-- Select * from Potential_Silver_Member;


CREATE VIEW Best_Area_Manager AS
SELECT Employee.First_Name AS Area_Manager_First_Name, Employee.Middle_Name AS Area_Manager_Middle_Name,
Employee.Last_Name AS Area_Manager_Last_Name, Employee.Address, Employee.Gender, Employee.Date_of_Birth,
Employee.Designation_Start_Date, PhoneNumber.Phone_Number, COUNT(MakeContract.Shop_ID) AS Number_of_Contracts
FROM ((((Employee
INNER JOIN AreaManager ON Employee.Employee_ID IN (SELECT Employee_ID FROM AreaManager))
INNER JOIN PhoneNumber ON PhoneNumber.Employee_ID = Employee.Employee_ID)
INNER JOIN Restaurant ON Restaurant.Restaurant_Area = AreaManager.Area)
INNER JOIN MakeContract ON (AreaManager.Employee_ID = MakeContract.Employee_ID
AND Restaurant.Shop_ID = MakeContract.Shop_ID))
WHERE MakeContract.Contract_Start_Time >= '2021-12-09'
GROUP BY AreaManager.Employee_ID
ORDER BY Number_of_Contracts DESC;

Select * from Best_Area_Manager;
-- DROP VIEW Best_Area_Manager;

CREATE VIEW Top_Restaurants AS
SELECT Shop.Name AS Restaurant_Name, Shop.Address, Shop.Business_Phone_Number, RestaurantType.Restaurant_Type, 
COUNT(Orders.Order_ID) AS Number_of_Orders
FROM (((Shop
INNER JOIN Restaurant ON Shop.Shop_ID IN (SELECT Shop_ID FROM Restaurant))
INNER JOIN RestaurantType ON Restaurant.Shop_ID = RestaurantType.Shop_ID)
INNER JOIN Orders ON Orders.Shop_ID IN (SELECT Shop_ID FROM Restaurant))
INNER JOIN Payment ON Orders.Order_ID = Payment.Order_ID
WHERE Payment.Payment_Time >= '2022-11-09'
GROUP BY RestaurantType.Restaurant_Type
ORDER BY Number_of_Orders DESC;

Select * from Top_Restaurants;
-- DROP VIEW Top_Restaurants;