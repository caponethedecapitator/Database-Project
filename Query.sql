USE EasyDelivery;

# Find the names of employee who supervises the most number of deliverers
SELECT Employee.First_Name, Employee.Middle_Name, Employee.Last_Name
FROM ((Employee
INNER JOIN AreaManager ON Employee.Employee_ID IN (SELECT Employee_ID FROM AreaManager))
INNER JOIN Deliverer ON Deliverer.Supervisor_ID = AreaManager.Employee_ID)
GROUP BY AreaManager.Employee_ID
ORDER BY COUNT(Deliverer.Supervisor_ID) DESC;

# Find the average number of orders placed by Potential Silver Member
SELECT AVG(Number_of_Orders) AS Average_Number_of_Orders
FROM Potential_Silver_Member;

# Find all the customers who placed orders of the restaurants that belong to Popular Restaurant Type. Please also report the name of restaurants. 
SELECT Customer.*, DeliveryAddress.Delivery_Address, Shop.Name
FROM ((((((Customer
INNER JOIN DeliveryAddress ON DeliveryAddress.Customer_ID = Customer.Customer_ID)
INNER JOIN Payment ON Payment.Customer_ID = Customer.Customer_ID)
INNER JOIN Orders ON Payment.Order_ID = Orders.Order_ID)
INNER JOIN Restaurant ON Restaurant.Shop_ID = Orders.Shop_ID)
INNER JOIN Shop ON Shop.Shop_ID IN (SELECT Shop_ID FROM Restaurant))
INNER JOIN RestaurantType ON (Restaurant.Shop_ID = RestaurantType.Shop_ID
AND Restaurant_Type IN (SELECT Restaurant_Type FROM Popular_Restaurant_Type)));

# List all the customers that have become a silver member within a month of joining the system.
SELECT Customer.*, DeliveryAddress.Delivery_Address
FROM (((Customer
INNER JOIN SilverMember ON Customer.Customer_ID IN (SELECT Customer_ID FROM SilverMember))
INNER JOIN DeliveryAddress ON DeliveryAddress.Customer_ID = Customer.Customer_ID)
INNER JOIN MemberCard ON MemberCard.Customer_ID = SilverMember.Customer_ID)
WHERE Issued_Date >= '2022-11-09';

# Find the names of deliverers who delivered the most orders in past 1 month
SELECT Employee.First_Name, Employee.Middle_Name, Employee.Last_Name
FROM (((Employee
INNER JOIN Deliverer ON Employee.Employee_ID IN (SELECT Deliverer.Employee_ID))
INNER JOIN Orders ON Orders.Employee_ID = Deliverer.Employee_ID)
INNER JOIN Payment ON Payment.Order_ID = Orders.Order_ID)
WHERE Payment.Payment_Time >= '2022-11-09'
GROUP BY Deliverer.Employee_ID
ORDER BY COUNT(Orders.Order_ID) DESC;

# Find the restaurants that provide most promotion in past 1 month
SELECT Shop.*, OpeningTime.Opening_Time, ClosingTime.Closing_Time
FROM ((((((Shop
INNER JOIN Restaurant ON Shop.Shop_ID IN (SELECT Shop_ID FROM Restaurant))
INNER JOIN OpeningTime ON OpeningTime.Shop_ID = Shop.Shop_ID)
INNER JOIN ClosingTime ON ClosingTime.Shop_ID = Shop.Shop_ID)
INNER JOIN Promotion ON Promotion.Shop_ID = Shop.Shop_ID)
INNER JOIN Orders ON Orders.Shop_ID = Shop.Shop_ID)
INNER JOIN Payment ON Payment.Order_ID = Orders.Order_ID)
WHERE Payment.Payment_Time >= '2022-11-09'
GROUP BY Restaurant.Shop_ID
ORDER BY COUNT(Promotion.Promotion_Code) DESC;

# Find the customer who have place orders of all Fast Food restaurants
SELECT Customer.*, DeliveryAddress.Delivery_Address
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
SELECT Customer.*, DeliveryAddress.Delivery_Address, Orders.Subtotal AS Price
FROM ((((Customer
INNER JOIN DeliveryAddress ON DeliveryAddress.Customer_ID = Customer.Customer_ID)
INNER JOIN Payment ON Payment.Customer_ID = Customer.Customer_ID)
INNER JOIN Orders ON Orders.Order_ID = Payment.Order_ID)
INNER JOIN Restaurant ON Restaurant.Shop_ID = Orders.Shop_ID)
GROUP BY Restaurant.Shop_ID;

# Find the area that have the most number of restaurants located
SELECT Restaurant.Restaurant_Area AS Area, COUNT(Restaurant.Shop_ID) AS Number_of_Restaurants
FROM Restaurant
GROUP BY Area
ORDER BY Number_of_Restaurants DESC;

# Find the schedule of the restaurant that have the most orders in past 1 month
SELECT OpeningTime.Opening_Time, ClosingTime.Closing_Time
FROM (((((Restaurant
INNER JOIN Shop ON Shop.Shop_ID IN (SELECT Restaurant.Shop_ID))
INNER JOIN OpeningTime ON OpeningTime.Shop_ID = Shop.Shop_ID)
INNER JOIN ClosingTime ON ClosingTime.Shop_ID = Shop.Shop_ID)
INNER JOIN Orders ON Orders.Shop_ID = Shop.Shop_ID)
INNER JOIN Payment ON Payment.Order_ID = Orders.Order_ID)
WHERE Payment.Payment_Time >= '2022-11-09'
GROUP BY OpeningTime.Opening_Time, ClosingTime.Closing_Time
ORDER BY COUNT(Orders.Order_ID) DESC;

# Find the names of employee who are also a Premium Member
SELECT Employee.First_Name, Employee.Middle_Name, Employee.Last_Name
FROM (Employee
INNER JOIN PremiumMember ON Employee.Premium_Member_ID = PremiumMember.Premium_Member_ID)

