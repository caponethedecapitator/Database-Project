# Product needs to be sold by restaurants as well

# Customers
SELECT * FROM Customer;
INSERT INTO Customer VALUES('C14527', "Jim", Null ,"Nguyen", '2012-01-30', '5734678921');
INSERT INTO Customer VALUES('C21134', "Peter", Null ,"Park", '2015-11-22', '4938491723');
INSERT INTO Customer VALUES('C12345', "John", NULL, "Joans", '2022-10-02', '4692478579');
INSERT INTO Customer VALUES('C12346', "Susan", "Bishop", "Mckay", '2002-06-07', '8721527870');
INSERT INTO Customer VALUES('C22390', "Karen", "Grace", "Barns", '2010-01-01', '9345452231');
INSERT INTO Customer VALUES('C67584', "Lucas", NULL, "McDonalds", '2009-05-03', '2478579469');
INSERT INTO Customer VALUES('C89883', "Makayla", "Carter", "Bartmen", '2014-08-09', '1457689865');
INSERT INTO Customer VALUES('C81232', "Adam", "Franklin", "Hubbard", '2003-02-27', '4691231233');
INSERT INTO Customer VALUES('C12334', "James", "John", "Johns", '2000-11-26', '9244576789');
INSERT INTO Customer VALUES('C94821', "Brandon", "Grant", "Haynes", '2010-09-19', '2187787270');
INSERT INTO Customer VALUES('C37802', "Ed", "Dylan", "Potter", '2007-01-01', '9545682231');

# Delivery Address
SELECT * FROM DeliveryAddress;
INSERT INTO DeliveryAddress VALUES('C14527', "123 Owl Dr. El Paso, TX 75080");
INSERT INTO DeliveryAddress VALUES('C21134', "3021 Bellmont Dr. Springfield, CT 06532");
INSERT INTO DeliveryAddress VALUES('C12345', "926 Sloan Dr. Allen, TX 75013");
INSERT INTO DeliveryAddress VALUES('C12346', "5002 Midnight Dr. Stamford, CT 06902");
INSERT INTO DeliveryAddress VALUES('C22390', "8986 Sage St. Detroit, MI 48205");
INSERT INTO DeliveryAddress VALUES('C67584', "602 Berkshire Ave. Coram, NY 11727");
INSERT INTO DeliveryAddress VALUES('C89883', "4 Manhattan Ave. Farmington, MI 48331");
INSERT INTO DeliveryAddress VALUES('C81232', "95 East Dr. Tonawanda, NY 14150");
INSERT INTO DeliveryAddress VALUES('C12334', "26 Birchpond Dr. Rockledge, FL 32955");
INSERT INTO DeliveryAddress VALUES('C94821', "7 Sherwood Lane Billings, MT 59101");
INSERT INTO DeliveryAddress VALUES('C37802', "93 Hanover St. Ringgold, GA 30736");

# Premium Member
SELECT * FROM PremiumMember;
INSERT INTO PremiumMember VALUES('P14742');
INSERT INTO PremiumMember VALUES('P74562');
INSERT INTO PremiumMember VALUES('P87120'); -- Employees
INSERT INTO PremiumMember VALUES('P93452');
INSERT INTO PremiumMember VALUES('P91283');
INSERT INTO PremiumMember VALUES('P23471');
INSERT INTO PremiumMember VALUES('P12340');
INSERT INTO PremiumMember VALUES('P87124');
INSERT INTO PremiumMember VALUES('P12373');
INSERT INTO PremiumMember VALUES('P89947');
INSERT INTO PremiumMember VALUES('P25122');
INSERT INTO PremiumMember VALUES('P87234');
INSERT INTO PremiumMember VALUES('P34832');
INSERT INTO PremiumMember VALUES('P87764');
INSERT INTO PremiumMember VALUES('P51421');
INSERT INTO PremiumMember VALUES('P91234');
INSERT INTO PremiumMember VALUES('P88753'); -- Customers
INSERT INTO PremiumMember VALUES('P39853');
INSERT INTO PremiumMember VALUES('P08234');

# Employee
SELECT * FROM Employee;
INSERT INTO Employee VALUES('E331', 'John', 'K.', 'White', '130 Hass Street', 'M', '1995-03-10', '2020-12-15', 'P14742');
INSERT INTO Employee VALUES('E178', 'Leo', Null, 'Huffman', '221 Hass Street', 'M', '1992-05-11', '2020-12-15', 'P74562');
INSERT INTO Employee VALUES('E111', 'Timon', NULL, 'Fajra', "3015 Carl Sutton Rd. Lizella, GA 31052", 'M', '1984-01-02', "2001-03-11", 'P87120');
INSERT INTO Employee VALUES('E237', 'Chris', 'Tom', 'Frea', "68 John St. West Hurley, NY 12491", 'M', '1977-10-13', "2002-04-15", 'P93452');
INSERT INTO Employee VALUES('E983', 'Lois', 'Christina', 'Chan', "227 S Center St Geneseo, IL 61254", 'F', '1983-07-04', "2005-10-28", 'P91283');
INSERT INTO Employee VALUES('E764', 'Hernando', 'Teddy', 'Park', "1520 W Agate Way Mustang, OK 73064", 'M', '1979-02-28', "2002-12-25", 'P23471');
INSERT INTO Employee VALUES('E123', 'Iris', NULL, 'Dileep', "15928 W Summerwalk Dr Surprise, AZ 85374", 'F', '1979-04-16', "2009-03-19", 'P12340');
INSERT INTO Employee VALUES('E468', 'Parsifal', 'Mancha', 'Hugo', "315 Romana Cir Hewitt, TX 76643", 'M', '1970-11-13', "2005-05-26", 'P87124');
INSERT INTO Employee VALUES('E083', 'Phoibe', NULL, 'Alon', "Po Box 613 Ola, AR 72853", 'F', '1981-05-26', "2009-09-29", 'P12373');
INSERT INTO Employee VALUES('E763', 'Julie', 'Sharon', 'Miller', "8401 Hiwassee St Charleston, TN 37310", 'F', '1966-09-20', "2006-06-28", 'P89947');
INSERT INTO Employee VALUES('E394', 'Edgar', 'Angie', 'Cohen', "61 Cherry St Glens Falls, NY 12801", 'M', '1968-11-05', "2003-02-10", 'P25122');
INSERT INTO Employee VALUES('E094', 'Brandy', 'Marcus', 'Weber', "200 E 1st St Hooks, TX 75561", 'M', '1981-07-03', "2008-10-03", 'P87234');
INSERT INTO Employee VALUES('E875', 'Jason', 'Irvin', 'Spencer', "809 W 12th St Grafton, ND 58237", 'M', '1977-07-21', "2008-09-02", 'P34832');
INSERT INTO Employee VALUES('E346', 'Alexander', 'Gavin', 'Lyons', "6649 N 51st Hwy Perryville, MO 63775", 'M', '1964-01-05', "2009-08-11", 'P87764');
INSERT INTO Employee VALUES('E986', 'Kelly', 'Ira', 'Ovliver', "49 Burlington Ave Leonardo, NJ 07737", 'F', '1969-02-16', "2007-02-13", 'P51421');
INSERT INTO Employee VALUES('E999', 'Stephan', 'Dean', 'Ryan', "16 Craig St Wayne, WV 25570", 'M', '1964-12-23', "2008-06-24", 'P91234');

# Phone Number
SELECT * FROM PhoneNumber;
INSERT INTO PhoneNumber VALUES('E331', '3215435795');
INSERT INTO PhoneNumber VALUES('E178', '9143486318');
INSERT INTO PhoneNumber VALUES('E111', '3484582167'); -- Shops
INSERT INTO PhoneNumber VALUES('E237', '4897395680');
INSERT INTO PhoneNumber VALUES('E983', '8511382904');
INSERT INTO PhoneNumber VALUES('E764', '3326683763');
INSERT INTO PhoneNumber VALUES('E123', '4800361726');
INSERT INTO PhoneNumber VALUES('E468', '3085416136');
INSERT INTO PhoneNumber VALUES('E083', '0517082766');
INSERT INTO PhoneNumber VALUES('E763', '7463243969'); -- Restaurants
INSERT INTO PhoneNumber VALUES('E394', '2378440450');
INSERT INTO PhoneNumber VALUES('E094', '8315726560');
INSERT INTO PhoneNumber VALUES('E875', '9179949990');
INSERT INTO PhoneNumber VALUES('E346', '4846385729');
INSERT INTO PhoneNumber VALUES('E986', '4347201295');
INSERT INTO PhoneNumber VALUES('E999', '0870477626');
INSERT INTO PhoneNumber VALUES('E999', '0787733671');

# Ordinary Customer
SELECT * FROM OrdinaryCustomer;
INSERT INTO OrdinaryCustomer VALUES('C14527');
INSERT INTO OrdinaryCustomer VALUES('C21134');
INSERT INTO OrdinaryCustomer VALUES('C12345');
INSERT INTO OrdinaryCustomer VALUES('C12346');
INSERT INTO OrdinaryCustomer VALUES('C22390');
INSERT INTO OrdinaryCustomer VALUES('C67584');
INSERT INTO OrdinaryCustomer VALUES('C89883');
INSERT INTO OrdinaryCustomer VALUES('C81232');

# Silver Member
SELECT * FROM SilverMember;
INSERT INTO SilverMember VALUES('C12334', 'P88753');
INSERT INTO SilverMember VALUES('C94821', 'P39853');
INSERT INTO SilverMember VALUES('C37802', 'P08234');

# Staff
SELECT * FROM Staff;
INSERT INTO Staff VALUES('E083');
INSERT INTO Staff VALUES('E763');

# Area Manager
SELECT * FROM AreaManager;
INSERT INTO AreaManager VALUES('E111', 'Richardson');
INSERT INTO AreaManager VALUES('E237', 'Frisco');
INSERT INTO AreaManager VALUES('E983', 'Dallas');
INSERT INTO AreaManager VALUES('E764', 'Plano');
INSERT INTO AreaManager VALUES('E123', 'El Paso');
INSERT INTO AreaManager VALUES('E468', 'Amarillo');

# Deliverer
SELECT * FROM Deliverer;
INSERT INTO Deliverer VALUES('E331', 'E111');
INSERT INTO Deliverer VALUES('E178', 'E983');
INSERT INTO Deliverer VALUES('E394', 'E111');
INSERT INTO Deliverer VALUES('E094', 'E237');
INSERT INTO Deliverer VALUES('E875', 'E983');
INSERT INTO Deliverer VALUES('E346', 'E764');
INSERT INTO Deliverer VALUES('E986', 'E123');
INSERT INTO Deliverer VALUES('E999', 'E468');

# Member Card
SELECT * FROM MemberCard;
INSERT INTO MemberCard VALUES('2947980455','2008-05-13', 'E083', 'C12334');
INSERT INTO MemberCard VALUES('7293883051', '2009-01-16', 'E083', 'C94821');
INSERT INTO MemberCard VALUES('5753926644', '2004-04-09', 'E763', 'C37802');

# Vehicle
SELECT * FROM Vehicle;
INSERT INTO Vehicle VALUES('NEW8654', 'Toyota', 'Tacoma', 'Gray', 'E331');
INSERT INTO Vehicle VALUES('ADD2632', 'Nissan', 'Frontier', 'Green', 'E178');
INSERT INTO Vehicle VALUES('HEL7044', 'Toyota', 'Tacoma', 'White', 'E394');
INSERT INTO Vehicle VALUES('LOW2312', 'Nissan', 'Frontier', 'Red', 'E094');
INSERT INTO Vehicle VALUES('ORL5512', 'Chevy', 'Silverado', 'Silver', 'E875');
INSERT INTO Vehicle VALUES('DIM7621', 'Toyota', 'Tacoma', 'Gray', 'E346');
INSERT INTO Vehicle VALUES('ERI0932', 'Ford', 'F150', 'Blue', 'E986');
INSERT INTO Vehicle VALUES('KHI9327', 'Ford', 'Maverick', 'Black', 'E999');

# Meal Pass
SELECT * FROM MealPass;
INSERT INTO MealPass VALUES('P88753', '2003-01-24', '2024-12-01'); 
INSERT INTO MealPass VALUES('P39853', '2007-11-25', '2024-12-01');

# Shop
SELECT * FROM Shop;
INSERT INTO Shop VALUES('18875', "Jason's Deli", '425 Coit Rd Richardson, TX 75080', '1255201447', 'E111'); -- Restaurants
INSERT INTO Shop VALUES('63985', "McDonalds", '875 Brushback Ln Frisco, TX 75002', '3942948796', 'E237');
INSERT INTO Shop VALUES('88526', "Olive Garden", '9813 Carter Dr Dallas, TX 70050', '6462986445', 'E983');
INSERT INTO Shop VALUES('19085', "Walmart", '9 Monday Dr Plano, TX 75003', '1149054170', 'E764'); -- Supermarkets
INSERT INTO Shop VALUES('90348', "Target", '1774 Independence Way El Paso, TX 75043', '9692464900', 'E123');
INSERT INTO Shop VALUES('42817', "Sam's Club", '12 Day Ln Amarillo, TX 75088', '8732154407', 'E468');

# Opening Time
SELECT * FROM OpeningTime;
INSERT INTO OpeningTime VALUES('18875', '8:00 am'); 
INSERT INTO OpeningTime VALUES('63985', '6:30 am');
INSERT INTO OpeningTime VALUES('88526', '10:00 am');
INSERT INTO OpeningTime VALUES('19085', '7:00 am');
INSERT INTO OpeningTime VALUES('90348', '8:00 am');
INSERT INTO OpeningTime VALUES('42817', '7:00 am');

# Closing Time
SELECT * FROM ClosingTime;
INSERT INTO ClosingTime VALUES('18875', '10:00 pm'); 
INSERT INTO ClosingTime VALUES('63985', '11:59 pm');
INSERT INTO ClosingTime VALUES('88526', '10:00 pm');
INSERT INTO ClosingTime VALUES('19085', '11:30 pm');
INSERT INTO ClosingTime VALUES('90348', '11:00 pm');
INSERT INTO ClosingTime VALUES('42817', '9:00 pm');

# Make Contract
SELECT * FROM MakeContract;
INSERT INTO MakeContract VALUES('E111', '18875', "2001-03-11");
INSERT INTO MakeContract VALUES('E237', '63985', "2002-04-15");
INSERT INTO MakeContract VALUES('E983', '88526', "2005-10-28");
INSERT INTO MakeContract VALUES('E764', '19085', "2002-12-25");
INSERT INTO MakeContract VALUES('E123', '90348', "2009-03-19");
INSERT INTO MakeContract VALUES('E468', '42817', "2005-05-26");

# Promotion 
SELECT * FROM Promotion;
INSERT INTO Promotion VALUES('1234567890', "Buy one lunch, get one free!", 'C12345', '18875'); 
INSERT INTO Promotion VALUES('9874123123', "15% off with Red Card", 'C81232', '90348');
INSERT INTO Promotion VALUES('1928356182', "Buy 5 red shirts, get a sixth free", 'C21134', '19085');

# Comment
SELECT * FROM Comment;
INSERT INTO Comment VALUES('C14527', '18875', '1', "Did not like the sandwich at all!!!"); 
INSERT INTO Comment VALUES('C12345', '18875', '5', "Great Restaurant! I love going here!");
INSERT INTO Comment VALUES('C12334', '18875', '4', "Food is really good, my favorite deli!"); 
INSERT INTO Comment VALUES('C12334', '63985', '2', "Food is bland and my fries came out cold");
INSERT INTO Comment VALUES('C94821', '88526', '4', "Nice dining experience and server was nice");

# Restaurants
SELECT * FROM Restaurant;
INSERT INTO Restaurant VALUES('18875', 'Richardson'); 
INSERT INTO Restaurant VALUES('63985', 'Frisco');
INSERT INTO Restaurant VALUES('88526', 'Dallas');

# Restaurant Type
SELECT * FROM RestaurantType;
INSERT INTO RestaurantType VALUES('18875', 'Deli / Lunch'); 
INSERT INTO RestaurantType VALUES('63985', 'Fast Food');
INSERT INTO RestaurantType VALUES('88526', 'Italian Food');

# Supermarket
SELECT * FROM Supermarket;
INSERT INTO Supermarket VALUES('19085');
INSERT INTO Supermarket VALUES('90348');
INSERT INTO Supermarket VALUES('42817');

# Product 
SELECT * FROM Product;
#INSERT INTO Product VALUES('6009633077', '18875', 'Reuben Sandwich', 'Beefy sandwich with chips!', '25'); 
#INSERT INTO Product VALUES('6006509240', '63985', 'Big Mac', 'A delicious burger with two patties', '50');
#INSERT INTO Product VALUES('6006509241', '63985', 'French Fries', 'Crispy Fries', '50');
#INSERT INTO Product VALUES('0087179217', '88526', 'Spagetti', 'Spagetti and Marinara', '60');
INSERT INTO Product VALUES('1694583761', '19085', 'Red Shirt', 'A small red shirt', '24');
INSERT INTO Product VALUES('1694583762', '19085', 'Blue Shirt', 'A small blue shirt', '24');
INSERT INTO Product VALUES('1694583763', '19085', 'Green Shirt', 'A small green shirt', '24');
INSERT INTO Product VALUES('2275300007', '90348', 'Plates', 'Ceramic plates for dining', '45');
INSERT INTO Product VALUES('1694583761', '90348', 'Red Shirt', 'A small red shirt', '56');
INSERT INTO Product VALUES('9105437266', '42817', 'Chicken', 'Yummy chicken', '34');
INSERT INTO Product VALUES('9105437267', '42817', 'Beef', 'Fresh beef', '34');
INSERT INTO Product VALUES('9105437268', '42817', 'Turkey', 'Big turkey', '34');

# Sell
SELECT * FROM Sell;
#INSERT INTO Sell VALUES('18875', '6009633077', 10.99); 
#INSERT INTO Sell VALUES('63985', '6006509240', 4.99);
#INSERT INTO Sell VALUES('63985', '6006509241', 2.99);
#INSERT INTO Sell VALUES('88526', '0087179217', 9.99);
INSERT INTO Sell VALUES('19085', '1694583761', 4.99);
INSERT INTO Sell VALUES('19085', '1694583762', 5.03);
INSERT INTO Sell VALUES('19085', '1694583763', 5.57);
INSERT INTO Sell VALUES('90348', '2275300007', 24.99);
INSERT INTO Sell VALUES('90348', '1694583761', 5.99);
INSERT INTO Sell VALUES('42817', '9105437266', 9.99);
INSERT INTO Sell VALUES('42817', '9105437267', 10.99);
INSERT INTO Sell VALUES('42817', '9105437268', 8.99);


# Orders - Customer needs to order from this?
SELECT * FROM Orders;
INSERT INTO Orders VALUES("111111111#", "19085", "E331", "NEW8654", 24.95, "5 Red shirts");
INSERT INTO Orders VALUES("111111112#", "19085", "E331", "NEW8654", 10.60, "A Blue and Green Shirts"); 
INSERT INTO Orders VALUES("111111113#", "19085", "E331", "NEW8654", 11.14, "2 Green shirts");
INSERT INTO Orders VALUES("111111114#", "19085", "E394", "HEL7044", 5.03, "1 Blue shirt");
INSERT INTO Orders VALUES("111111115#", "90348", "E986", "ERI0932", 24.99, "A set of plates");
INSERT INTO Orders VALUES("111111116#", "90348", "E986", "ERI0932", 30.98, "A set of plates and a Red Shirt");
INSERT INTO Orders VALUES("111111117#", "90348", "E986", "ERI0932", 5.99, "A Red Shirt");
INSERT INTO Orders VALUES("111111118#", "90348", "E986", "ERI0932", 49.98, "2 Sets of plates");
INSERT INTO Orders VALUES("111111119#", "42817", "E999", "KHI9327", 9.99, "A chicken");
INSERT INTO Orders VALUES("111111120#", "42817", "E999", "KHI9327", 19.98, "2 Chickens");
INSERT INTO Orders VALUES("111111121#", "42817", "E999", "KHI9327", 20.98, "Beef and Chicken");
INSERT INTO Orders VALUES("111111122#", "42817", "E999", "KHI9327", 8.99, "A Turkey");

# Payment
SELECT * FROM Payment;
INSERT INTO Payment VALUES(1231231234, '2022-11-04 12:12:12', "CreditCard", "C14527","111111111#");
INSERT INTO Payment VALUES(1231129384, '2022-08-04 11:59:26', "Check", "C21134","111111112#");
INSERT INTO Payment VALUES(1231873537, '2022-07-26 12:12:12', "CreditCard", "C12345","111111113#");
INSERT INTO Payment VALUES(1232934759, '2022-03-17 11:59:26', "CreditCard", "C12346","111111114#");
INSERT INTO Payment VALUES(1231908231, '2022-11-04 10:10:09', "CreditCard", "C22390","111111115#");
INSERT INTO Payment VALUES(1231909325, '2022-03-02 11:08:27', "Cash", "C67584","111111116#");
INSERT INTO Payment VALUES(1231809812, '2022-09-05 10:09:08', "CreditCard", "C89883","111111117#");
INSERT INTO Payment VALUES(1231278633, '2022-02-01 11:59:26', "CreditCard", "C81232","111111118#");
INSERT INTO Payment VALUES(1231992830, '2022-11-04 10:11:09', "CreditCard", "C22390","111111119#");
INSERT INTO Payment VALUES(1231998275, '2022-06-07 02:04:36', "CreditCard", "C12334", "111111120#");
INSERT INTO Payment VALUES(1231895974, '2022-09-05 04:09:57', "CreditCard", "C94821","111111121#");
INSERT INTO Payment VALUES(1231208898, '2022-02-01 05:10:45', "CreditCard", "C37802","111111122#");
