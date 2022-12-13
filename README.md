# Database Project
SQL database project with regard to easy delivery.


## Table of Contents
  - [Instruction](#instruction)

  - [Project Description](#project-description)

  - [Questions](#questions)


  

  <!-- - [Result](#result) -->

## Instruction: 
[EasyDelivery.sql](EasyDelivery.sql) is used for creating tables.\
[View.sql](View.sql) is used for creating corresponding views.\
[Query.sql](Query.sql) is used for creating specified queries.\
[Data.sql](Data.sql) is used for inserting/updating test samples.

Run [EasyDelivery.sql](EasyDelivery.sql), then [Data.sql](Data.sql) to insert data, then we get [View.sql](View.sql)&[Query.sql](Query.sql) to answer the questions.

## Project Description:

The EasyDelivery Company provides food/products delivery service for customers. Customer can place takeout/delivery orders through the EasyDelivery App. Now, EasyDelivery would like one relational database to store the information about their management system to be able to carry out their work in an organized way. They have some major modules such as Employee and Customer, Restaurant and Order.

Employee’s information is stored in the database, such as employee ID, Name (First, Middle, Last), Address, Gender, Date of Birth (should be constrained as 16 years or older) and Phone number (one person may have more than one phone number). The Employee’s ID should have the format “EXXX” (“E” followed by exactly 3 digits), where X is a number from 0-9. (Hint: you can use regexp_like() function).

Details of a customer such as ID, Name (First, Middle, Last), Delivery Address and Phone number, Joining Date are recorded. You are free to define the format of customer ID. A Customer may have multiple delivery addresses. Customer is further classified as Ordinary Customer and Silver Member. Every silver member owns one unique member card issued by Staff. Card issuing date is stored. Employee and Silver Member can be Premium Member who have extra privileges. Every premium member owns a Meal Pass, which can allow the member has free delivery fee for their orders 10 times monthly. The Meal pass has effective dates and expiration dates.

Employee is further classified as Area Manager, Deliverer and Staff. The start date of the designation of each employee is stored. Every deliverer is supervised by an area manager, an area manager may supervise many deliverers. Every deliverer needs to register at least one Vehicle for delivery. Vehicle’s information such as Plate Number, Maker, Model and Color are stored. An area manager works in an Area (Richardson, Frisco, Plano, Dallas, etc.), and is responsible for making contracts with the Shops in his working area. The contract start time of each shop is stored.

There are two types of Shops: Restaurants and Supermarkets. Restaurants’ Name, Type (Fast Food, BBQ, Buffet, Drink, etc.), Address, Area, Business Phone Number are recorded. A Restaurant can have more than one type. Supermarkets’ Name, Address, Business Phone Number are recorded. Supermarkets sell various Products, one product may be sold in different supermarkets at different price. Supermarkets maintain Inventories of their products showing how many products in stock. Every product has ID which is only guaranteed unique in each store, but different product may have the same ID in different stores. Product names and description are also stored.

Each Shop opens and closes at specific times following a schedule table. Shops may have different open and close time in different days in a week. Shops sometimes may provide Promotion. Each Promotion includes a unique Promotion code, and its description. When Customers place orders, customer may choose to use promotion codes. Customers can make Comments to the Shops. The comments include rating score (can be 1,2,3,4,5), and comment contents.

Details of Orders such as Order ID, Order Contents, Subtotals are recorded. Each order belongs to corresponding Restaurants. Customer can select different payment types to pay for the order. Details of Payment such as unique Payment Confirm Number, Payment Type, Payment Time is recorded. Deliverer will deliver the order with a specific registered vehicle.

## Questions: 
1. Is the ability to model superclass/subclass relationships likely to be important in the shopping mall management system like above? Why or why not?

    A: The ability to model superclass/subclass relationships is very important. By using this ability, we can delineate a hierarchical structure based on our project design. We can create concrete entities more specifically and deduce complex relationships more accurately.
    

2. Can you think of 5 more business rules (other than those explicitly described above) that are likely to be used in a shopping mall environment? Add your rules to the above requirement to be implemented.
  
    * A1: In a similar vein to the first question, Area Managers must report to an Owner who employs them. The Owner pays the Area Manager and the salaries of the employees that report to the Area manager (for the area manager to pay them).
    * A2: Customers who enjoy their driver's services should be able to tip the driver a percentage of the delivery fee
    * A3: Area Managers should be able to pay their employees. The amount could vary based on expereince and time spent working for the company. Another factor could be Area managers have to pay for the gas of the deliverers.
    * A4: Owners (or Area Managers) can hire advertisers to help them spread the word of their company. If a customer saw an advertisement, they should be able to put in a notice when they buy telling the company that they saw an advertisement that incentivised them to make a purchase at that location.
    * A5: Companies that want to make large purchases from either restaurants / supermarkets should be on a list to recieve priority shipping and discounts on items that they purchase in bulk.
    
3. Justify using a Relational DBMS like Oracle for this project (Successfully design a relational database system, show all the design in final report).

    A: Although it seems very trivial for a small amount of data and a few shops. If this database was on a local / national / global scale, it would become very important to have organized data that is normalized to easily find and log queries of our large database. Using a relational DBMS we can decide who can see what and have security measures in place to prevent others from seeing data that they shouldn't be able to. The ease of maintaining a large database can lead to increases in managenment and effienceny of our data and querying. 
