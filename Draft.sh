grep DESCRIBE EasyDelivery.sql

grep DROP EasyDelivery.sql
# DROP DATABASE EasyDelivery;
# DROP TABLE Customer cascade;
# DROP TABLE DeliveryAddress;
# DROP TABLE PremiumMember;
# DROP TABLE Employee;
# DROP TABLE PhoneNumber;
# DROP TABLE OrdinaryCustomer;
# DROP TABLE SilverMember;
# DROP TABLE Staff;
# DROP TABLE AreaManager;
# DROP TABLE Deliverer;
# DROP TABLE MemberCard;
# DROP TABLE Vehicle;
# DROP TABLE MealPass;
# DROP TABLE Shop;
# DROP TABLE OpeningTime;
# DROP TABLE ClosingTime;
# DROP TABLE MakeContract;
# DROP TABLE Promotion;
# DROP TABLE Comment;
# DROP TABLE Restaurant;
# DROP TABLE RestaurantType;
# DROP TABLE Supermarket;
# DROP TABLE Product;
# DROP TABLE Sell;
# DROP TABLE Orders;
# DROP TABLE Payment;


grep DROP View.sql
# DROP VIEW Annual_Top_3_Customers;
# DROP VIEW Popular_Restaurant_Type;
# DROP VIEW Potential_Silver_Member;
# DROP VIEW Best_Area_Manager;
# DROP VIEW Top_Restaurants;

Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'easydelivery.shop.Name' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
You might be interested in the solution:
https://stackoverflow.com/questions/23921117/disable-only-full-group-by

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'easydelivery.customer.First_Name'; this is incompatible with sql_mode=only_full_group_by


# In the Annual_Top_3_Customers View
# '''
# GROUP BY Customer.Customer_ID
# '''
# is missed