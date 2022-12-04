USE EasyDelivery;

# Find the names of employee who supervises the most number of deliverers
SELECT Employee.First_Name AS Employee_First_Name, Employee.Middle_Name AS Employee_Middle_Name, 
Employee.Last_Name AS Employee_Last_Name, COUNT(Deliverer.Supervisor_ID) AS Number_of_Deliverers 
FROM ((Employee
INNER JOIN AreaManager ON Employee.Employee_ID = AreaManager.Employee_ID)
INNER JOIN Deliverer ON Deliverer.Supervisor_ID = AreaManager.Employee_ID)
GROUP BY AreaManager.Employee_ID
ORDER BY Number_of_Deliverers DESC LIMIT 1;

# Find the average number of orders placed by Potential Silver Member
SELECT AVG(Number_of_Orders) AS Average_Number_of_Orders
FROM Potential_Silver_Member;
-- Select * FROM Potential_Silver_Member;

# Find all the customers who placed orders of the restaurants that belong to Popular Restaurant Type. Please also report the name of restaurants. 
SELECT Distinct Customer.First_Name AS Customer_First_Name, Customer.Middle_Name AS Customer_Middle_Name, 
Customer.Last_Name AS Customer_Last_Name, Shop.Name AS Restaurant_Name
FROM ((((((Customer
INNER JOIN DeliveryAddress ON DeliveryAddress.Customer_ID = Customer.Customer_ID)
INNER JOIN Payment ON Payment.Customer_ID = Customer.Customer_ID)
INNER JOIN Orders ON Payment.Order_ID = Orders.Order_ID)
INNER JOIN Restaurant ON Restaurant.Shop_ID = Orders.Shop_ID)
INNER JOIN Shop ON Shop.Shop_ID = Restaurant.Shop_ID)
INNER JOIN RestaurantType ON (Restaurant.Shop_ID = RestaurantType.Shop_ID
AND Restaurant_Type IN (SELECT Restaurant_Type FROM Popular_Restaurant_Type)));

# List all the customers that have become a silver member within a month of joining the system.
SELECT Customer.First_Name AS Customer_First_Name, Customer.Middle_Name AS Customer_Middle_Name, Customer.Last_Name AS Customer_Last_Name
FROM (((Customer
INNER JOIN SilverMember ON Customer.Customer_ID = SilverMember.Customer_ID)
INNER JOIN DeliveryAddress ON DeliveryAddress.Customer_ID = Customer.Customer_ID)
INNER JOIN MemberCard ON MemberCard.Customer_ID = SilverMember.Customer_ID)
WHERE MemberCard.Issued_Date >= '2022-11-09';

# Find the names of deliverers who delivered the most orders in past 1 month
SELECT Employee.First_Name AS Deliverer_First_Name, Employee.Middle_Name AS Deliverer_Middle_Name, 
Employee.Last_Name AS Deliverer_Last_Name, COUNT(Orders.Order_ID) AS Number_of_Orders
FROM (((Employee
INNER JOIN Deliverer ON Employee.Employee_ID = Deliverer.Employee_ID)
INNER JOIN Orders ON Orders.Employee_ID = Deliverer.Employee_ID)
INNER JOIN Payment ON Payment.Order_ID = Orders.Order_ID)
WHERE Payment.Payment_Time >= '2022-11-09'
GROUP BY Deliverer.Employee_ID
ORDER BY Number_of_Orders DESC LIMIT 1;

# Find the restaurants that provide most promotion in past 1 month
SELECT Shop.Name AS Restaurant_Name, COUNT(Promotion.Promotion_Code) AS Number_of_Promotion
FROM ((((((Shop
INNER JOIN Restaurant ON Shop.Shop_ID IN (SELECT Shop_ID FROM Restaurant))
INNER JOIN OpeningTime ON OpeningTime.Shop_ID = Shop.Shop_ID)
INNER JOIN ClosingTime ON ClosingTime.Shop_ID = Shop.Shop_ID)
INNER JOIN Promotion ON Promotion.Shop_ID = Shop.Shop_ID)
INNER JOIN Orders ON Orders.Shop_ID = Shop.Shop_ID)
INNER JOIN Payment ON Payment.Order_ID = Orders.Order_ID)
WHERE Payment.Payment_Time >= '2022-11-09'
GROUP BY Restaurant.Shop_ID
ORDER BY Number_of_Promotion DESC LIMIT 1;

# Find the customer who have place orders of all Fast Food restaurants
SELECT Distinct Customer.First_Name AS Customer_First_Name, Customer.Middle_Name AS Customer_Middle_Name, Customer.Last_Name AS Customer_Last_Name
FROM (((((Customer
INNER JOIN DeliveryAddress ON DeliveryAddress.Customer_ID = Customer.Customer_ID)
INNER JOIN Payment ON Payment.Customer_ID = Customer.Customer_ID)
INNER JOIN Orders ON Orders.Order_ID = Payment.Order_ID)
INNER JOIN Restaurant ON Restaurant.Shop_ID = Orders.Shop_ID)
INNER JOIN RestaurantType ON RestaurantType.Shop_ID = Restaurant.Shop_ID)
WHERE Restaurant_Type = ALL(
SELECT Restaurant_Type 
FROM RestaurantType
WHERE Restaurant_Type = 'Fast Food');

# For each restaurant, list all the customers who placed the order there, and the price of each order
SELECT Shop.Name AS Restaurant_Name, Customer.First_Name AS Customer_First_Name, Customer.Middle_Name AS Customer_Middle_Name, 
Customer.Last_Name AS Customer_Last_Name, Orders.Subtotal AS Price
FROM ((((Customer
INNER JOIN Payment ON Payment.Customer_ID = Customer.Customer_ID)
INNER JOIN Orders ON Orders.Order_ID = Payment.Order_ID)
INNER JOIN Restaurant ON Orders.Shop_ID = Restaurant.Shop_ID)
INNER JOIN Shop ON Shop.Shop_ID = Restaurant.Shop_ID);
-- GROUP BY Restaurant.Shop_ID;

# Find the area that have the most number of restaurants located
SELECT Restaurant.Restaurant_Area AS Area, COUNT(Restaurant.Shop_ID) AS Number_of_Restaurants
FROM Restaurant
GROUP BY Area
ORDER BY Number_of_Restaurants DESC LIMIT 1;

# Find the schedule of the restaurant that have the most orders in past 1 month
SELECT Shop.Name AS Restaurant_Name, OpeningTime.Opening_Time, ClosingTime.Closing_Time, COUNT(Orders.Order_ID) AS Number_of_Orders
FROM (((((Restaurant
INNER JOIN Shop ON Shop.Shop_ID = Restaurant.Shop_ID)
INNER JOIN OpeningTime ON OpeningTime.Shop_ID = Shop.Shop_ID)
INNER JOIN ClosingTime ON ClosingTime.Shop_ID = Shop.Shop_ID)
INNER JOIN Orders ON Orders.Shop_ID = Shop.Shop_ID)
INNER JOIN Payment ON Payment.Order_ID = Orders.Order_ID)
WHERE Payment.Payment_Time >= '2022-11-09'
GROUP BY OpeningTime.Opening_Time, ClosingTime.Closing_Time
ORDER BY Number_of_Orders DESC LIMIT 1;

# Find the names of employee who are also a Premium Member
SELECT Employee.First_Name AS Employee_First_Name, Employee.Middle_Name AS Employee_Middle_Name, Employee.Last_Name AS Employee_Last_Name
FROM (Employee
INNER JOIN PremiumMember ON Employee.Premium_Member_ID = PremiumMember.Premium_Member_ID);

# Find the supermarket that have most different products in stock
SELECT Shop.Name AS Supermarket_Name, Shop.Address, Shop.Business_Phone_Number, OpeningTime.Opening_Time, ClosingTime.Closing_Time,
COUNT(Product.Product_ID) AS Number_of_Products
FROM ((((Supermarket
INNER JOIN Shop ON Shop.Shop_ID = Supermarket.Shop_ID)
INNER JOIN OpeningTime ON OpeningTime.Shop_ID = Shop.Shop_ID)
INNER JOIN ClosingTime ON ClosingTime.Shop_ID = Shop.Shop_ID)
INNER JOIN Product ON Product.Shop_ID = Shop.Shop_ID)
GROUP BY Product.Shop_ID
ORDER BY Number_of_Products DESC LIMIT 1;

# For each product, list all the supermarket selling it, and the price of the product at the supermarket
SELECT Product.Product_Name AS Product_Name, Shop.Name AS Supermarket_Name, Sell.Price AS Supermarket_Price
FROM (((Supermarket
INNER JOIN Shop ON Shop.Shop_ID = Supermarket.Shop_ID)
INNER JOIN Sell ON Sell.Shop_ID = Shop.Shop_ID)
INNER JOIN Product ON Product.Shop_ID = Sell.Shop_ID);