# Database-Project
SQL code for database project with regard to the graduate course.


## Table of Contents
  - [Instruction](#instruction)

  - [Questions](#questions)

  <!-- - [Result](#result) -->

## Instruction: 
[EasyDelivery.sql](EasyDelivery.sql) is used for creating tables.\
[View.sql](View.sql) is used for creating corresponding views.\
[Query.sql](Query.sql) is used for creating specified queries.\
[Data.sql](Data.sql) is used for inserting/updating test samples.

Run [EasyDelivery.sql](EasyDelivery.sql), then [Data.sql](Data.sql) to insert data, then we get [View.sql](View.sql)&[Query.sql](Query.sql) to answer the questions.


## Questions: 
1. Is the ability to model superclass/subclass relationships likely to be important in the shopping mall management system like above? Why or why not?

    A: The ability to model superclass/subclass relationships is very important. By using this ability, we can delineate a hierarchical structure based on our project design. We can create concrete entities more specifically and deduce complex relationships more accurately.
    
2. Can you think of 5 more business rules (other than those explicitly described above) that are likely to be used in a shopping mall environment? Add your rules to the above requirement to be implemented.
  
    A1: In a similar vein to the first question, Area Managers must report to an Owner who employs them. The Owner pays the Area Manager and the salaries of the employees that report to the Area manager (for the area manager to pay them).
    A2: Customers who enjoy their driver's services should be able to tip the driver a percentage of the delivery fee
    A3: Area Managers should be able to pay their employees. The amount could vary based on expereince and time spent working for the company. Another factor could be Area managers have to pay for the gas of the deliverers
    A4: Owners (or Area Managers) can hire advertisers to help them spread the word of their company. If a customer saw an advertisement, they should be able to put in a notice when they buy telling the company that they saw an advertisement that incentivised them to make a purchase at that location.
    A5: Companies that want to make large purchases from either restaurants / supermarkets should be on a list to recieve priority shipping and discounts on items that they purchase in bulk.
    
3. Justify using a Relational DBMS like Oracle for this project (Successfully design a relational database system, show all the design in final report).

    A: Although it seems very trivial for a small amount of data and a few shops. If this database was on a local / national / global scale, it would become very important to have organized data that is normalized to easily find and log queries of our large database. Using a relational DBMS we can decide who can see what and have security measures in place to prevent others from seeing data that they shouldn't be able to. The ease of maintaining a large database can lead to increases in managenment and effienceny of our data and querying. 
