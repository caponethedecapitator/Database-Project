# Customers - 9
SELECT * FROM Customer;
INSERT INTO Customer VALUES('C14527', "Jim",Null ,"Nguyen", '2012-01-30', 5734678921);
INSERT INTO Customer VALUES('C21134', "Peter",Null ,"Park", '2015-11-22', 4938491723);
INSERT INTO Customer VALUES('C12345', "John", NULL, "Joans", '2022-10-2', '4692478579');
INSERT INTO Customer VALUES('C12346', "Susan", "Bishop", "Mckay", '2002-6-7', '8721527870');
INSERT INTO Customer VALUES('C22390', "Karen", "Grace", "Barns", '2010-1-1', '9345452231');
INSERT INTO Customer VALUES('C67584', "Lucas", NULL, "McDonalds", '2009-5-3', '2478579469');
INSERT INTO Customer VALUES('C89883', "Makayla", "Carter", "Bartmen", '2014-8-9', '1457689865');
INSERT INTO Customer VALUES('C81232', "Adam", "Franklin", "Hubbard", '2003-2-27', '4691231233');
INSERT INTO Customer VALUES('C12334', "James", "John", "Johns", '2000-11-26', '9244576789');
INSERT INTO Customer VALUES('C94821', "Brandon", "Grant", "Haynes", '2010-9-19', '2187787270');
INSERT INTO Customer VALUES('C37802', "Ed", "Dylan", "Potter", '2007-1-1', '9545682231');

# Delivery Address - 9
SELECT * FROM DeliveryAddress;
INSERT INTO DeliveryAddress VALUES('C12345', "926 Sloan Dr. Allen, TX 75013");
INSERT INTO DeliveryAddress VALUES('C12346', "5002 Midnight Dr. Stamford, CT 06902");
INSERT INTO DeliveryAddress VALUES('C22390', "8986 Sage St. Detroit, MI 48205");
INSERT INTO DeliveryAddress VALUES('C67584', "602 Berkshire Ave. Coram, NY 11727");
INSERT INTO DeliveryAddress VALUES('C89883', "4 Manhattan Ave. Farmington, MI 48331");
INSERT INTO DeliveryAddress VALUES('C81232', "95 East Dr. Tonawanda, NY 14150");
INSERT INTO DeliveryAddress VALUES('C12334', "26 Birchpond Dr. Rockledge, FL 32955");
INSERT INTO DeliveryAddress VALUES('C94821', "7 Sherwood Lane Billings, MT 59101");
INSERT INTO DeliveryAddress VALUES('C37802', "93 Hanover St. Ringgold, GA 30736");

# Premium Member - 14 Employees + 3 Customers
SELECT * FROM PremiumMember;
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

# Employee - 14 (7 for shops / 7 for restaurants)
SELECT * FROM Employee;
INSERT INTO Employee VALUES('E331', 'John', 'K.', 'White', '130 Hass Street', 'M', '1995-03-10', '2020-12-15', NULL);
INSERT INTO Employee VALUES('E178', 'Leo', Null, 'Huffman', '221 Hass Street', 'M', '1992-05-11', '2020-12-15', NULL);
-- Delete from Employee where Employee_ID = 'E178';
INSERT INTO Employee VALUES('E111', 'Timon', NULL, 'Fajra', "3015 Carl Sutton Rd. Lizella, GA 31052", 'M', '1984-1-2', "2001-3-11", 'P87120');
INSERT INTO Employee VALUES('E237', 'Chris', 'Tom', 'Frea', "68 John St. West Hurley, NY 12491", 'M', '1977-10-13', "2002-4-15", 'P93452');
INSERT INTO Employee VALUES('E983', 'Lois', 'Christina', 'Chan', "227 S Center St Geneseo, IL 61254", 'F', '1983-7-4', "2005-10-28", 'P91283');
INSERT INTO Employee VALUES('E764', 'Hernando', 'Teddy', 'Park', "1520 W Agate Way Mustang, OK 73064", 'M', '1979-2-28', "2002-12-25", 'P23471');
INSERT INTO Employee VALUES('E123', 'Iris', NULL, 'Dileep', "15928 W Summerwalk Dr Surprise, AZ 85374", 'F', '1979-4-16', "2009-3-19", 'P12340');
INSERT INTO Employee VALUES('E468', 'Parsifal', 'Mancha', 'Hugo', "315 Romana Cir Hewitt, TX 76643", 'M', '1970-11-13', "2005-5-26", 'P87124');
INSERT INTO Employee VALUES('E083', 'Phoibe', NULL, 'Alon', "Po Box 613 Ola, AR 72853", 'F', '1981-5-26', "2009-9-29", 'P12373');
INSERT INTO Employee VALUES('E763', 'Julie', 'Sharon', 'Miller', "8401 Hiwassee St Charleston, TN 37310", 'F', '1966-9-20', "2006-6-28", 'P89947');
INSERT INTO Employee VALUES('E394', 'Edgar', 'Angie', 'Cohen', "61 Cherry St Glens Falls, NY 12801", 'M', '1968-11-5', "2003-2-10", 'P25122');
INSERT INTO Employee VALUES('E094', 'Brandy', 'Marcus', 'Weber', "200 E 1st St Hooks, TX 75561", 'M', '1981-7-3', "2008-10-3", 'P87234');
INSERT INTO Employee VALUES('E875', 'Jason', 'Irvin', 'Spencer', "809 W 12th St Grafton, ND 58237", 'M', '1977-7-21', "2008-9-2", 'P34832');
INSERT INTO Employee VALUES('E346', 'Alexander', 'Gavin', 'Lyons', "6649 N 51st Hwy Perryville, MO 63775", 'M', '1964-1-5', "2009-8-11", 'P87764');
INSERT INTO Employee VALUES('E986', 'Kelly', 'Ira', 'Ovliver', "49 Burlington Ave Leonardo, NJ 07737", 'F', '1969-2-16', "2007-2-13", 'P51421');
INSERT INTO Employee VALUES('E999', 'Stephan', 'Dean', 'Ryan', "16 Craig St Wayne, WV 25570", 'M', '1964-12-23', "2008-6-24", 'P91234');

# Phone Number - 15 (7 for shops / 7 for restaurants) + 1 person with 2
SELECT * FROM PhoneNumber;
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

# Ordinary Customer - 6 out of the 9 customers
SELECT * FROM OrdinaryCustomer;
INSERT INTO OrdinaryCustomer VALUES('C12345');
INSERT INTO OrdinaryCustomer VALUES('C12346');
INSERT INTO OrdinaryCustomer VALUES('C22390');
INSERT INTO OrdinaryCustomer VALUES('C67584');
INSERT INTO OrdinaryCustomer VALUES('C89883');
INSERT INTO OrdinaryCustomer VALUES('C81232');

# Silver Member - 3 out of the 9 customers
SELECT * FROM SilverMember;
INSERT INTO DeliveryAddress VALUES('C12334', 'P88753');
INSERT INTO DeliveryAddress VALUES('C94821', 'P39853');
INSERT INTO DeliveryAddress VALUES('C37802', 'P08234');

# Staff - (14 - (6 mngrs) - (6 Delivers)) = 2
SELECT * FROM Staff;
INSERT INTO Staff VALUES('E083');
INSERT INTO Staff VALUES('E763');

# Area Manager - 6 
SELECT * FROM AreaManager;
INSERT INTO AreaManager VALUES('E111', 'Richardson');
INSERT INTO AreaManager VALUES('E237', 'Frisco');
INSERT INTO AreaManager VALUES('E983', 'Dallas');
INSERT INTO AreaManager VALUES('E764', 'Plano');
INSERT INTO AreaManager VALUES('E123', 'El Paso');
INSERT INTO AreaManager VALUES('E468', 'Amarillo');

# Deliverer - 6 Disjoint wiht AreaManager and Staff
SELECT * FROM Deliverer;
INSERT INTO Deliverer VALUES('E394', 'E111');
INSERT INTO Deliverer VALUES('E094', 'E237');
INSERT INTO Deliverer VALUES('E875', 'E983');
INSERT INTO Deliverer VALUES('E346', 'E764');
INSERT INTO Deliverer VALUES('E986', 'E123');
INSERT INTO Deliverer VALUES('E999', 'E468');

# Member Card - 3 issued by staff
SELECT * FROM MemberCard;
INSERT INTO MemberCard VALUES('2947980455','2008-5-13', 'E083', 'C12334');
INSERT INTO MemberCard VALUES('7293883051 ', '2009-1-16', 'E083', 'C94821');
INSERT INTO MemberCard VALUES('5753926644', '2004-4-9', 'E763', 'C37802');

# Vehicle
SELECT * FROM Vehicle;
INSERT INTO Vehicle VALUES('HEL7044', 'Toyota', 'Tacoma', 'White', 'E394');
INSERT INTO Vehicle VALUES('LOW2312', 'Nissan', 'Frontier', 'Red', 'E094');
INSERT INTO Vehicle VALUES('ORL5512', 'Chevy', 'Silverado', 'Silver', 'E875');
INSERT INTO Vehicle VALUES('DIM7621', 'Toyota', 'Tacoma', 'Gray', 'E346');
INSERT INTO Vehicle VALUES('ERI0932', 'Ford', 'F150', 'Blue', 'E986');
INSERT INTO Vehicle VALUES('KHI9327', 'Ford', 'Maverick', 'Black', 'E999');

# Meal Pass - 2 out of 3 customers
SELECT * FROM MealPass;
INSERT INTO MealPass VALUES('P88753', '2003-1-24', '2024-12-1'); 
INSERT INTO MealPass VALUES('P39853', '2007-11-25', '2024-12-1');

# Shop - 6 (3 Restaurants and 3 Supermarkets)
SELECT * FROM Shop;
INSERT INTO Shop VALUES('188753', "Jason's Deli", '425 Coit Rd Richardson, TX 75080', '1255201447', 'E111'); -- Restaurants
INSERT INTO Shop VALUES('639853', "McDonalds", '875 Brushback Ln Frisco, TX 75002', '3942948796', 'E237');
INSERT INTO Shop VALUES('885269', "Olive Garden", '9813 Carter Dr Dallas, TX 70050', '6462986445', 'E983');
INSERT INTO Shop VALUES('190859', "Walmart", '9 Monday Dr Plano, TX 75003', '1149054170', 'E764'); -- Supermarkets
INSERT INTO Shop VALUES('903488', "Target", '1774 Independence Way El Paso, TX 75043', '9692464900', 'E123');
INSERT INTO Shop VALUES('428176', "Sam's Club", '12 Day Ln Amarillo, TX 75088', '8732154407', 'E468');

# Opening Time
SELECT * FROM OpeningTime;
INSERT INTO OpeningTime VALUES('188753', '8:00 am'); 
INSERT INTO OpeningTime VALUES('639853', '6:30 am');
INSERT INTO OpeningTime VALUES('885269', '10:00 am');
INSERT INTO OpeningTime VALUES('190859', '7:00 am');
INSERT INTO OpeningTime VALUES('903488', '8:00 am');
INSERT INTO OpeningTime VALUES('428176', '7:00 am');

# Closing Time
SELECT * FROM ClosingTime;
INSERT INTO ClosingTime VALUES('188753', '10:00 pm'); 
INSERT INTO ClosingTime VALUES('639853', '11:59 pm');
INSERT INTO ClosingTime VALUES('885269', '10:00 pm');
INSERT INTO ClosingTime VALUES('190859', '11:30 pm');
INSERT INTO ClosingTime VALUES('903488', '11:00 pm');
INSERT INTO ClosingTime VALUES('428176', '9:00 pm');

# Make Contract - Only with Area Managers
SELECT * FROM MakeContract;
INSERT INTO MakeContract VALUES('E111', '188753', "2001-3-11");
INSERT INTO MakeContract VALUES('E237', '639853', "2002-4-15");
INSERT INTO MakeContract VALUES('E983', '885269', "2005-10-28");
INSERT INTO MakeContract VALUES('E764', '190859', "2002-12-25");
INSERT INTO MakeContract VALUES('E123', '903488', "2009-3-19");
INSERT INTO MakeContract VALUES('E468', '428176', "2005-5-26");

# Promotion - 2
SELECT * FROM Promotion;
INSERT INTO Promotion VALUES('1234567890', "Buy one lunch, get one free!", 'C12345', '188753'); 
INSERT INTO Promotion VALUES('9874123123', "15% off with Red Card", 'C81232', '903488');

# Comment
SELECT * FROM Comment;
INSERT INTO Comment VALUES('C12345', '188753', '5', "Great Restaurant! I love going here!"); 
INSERT INTO Comment VALUES('C12334', '639853', '2', "Food is bland and my fries came out cold");
INSERT INTO Comment VALUES('C94821', '885269', '4', "Nice dining experience and server was nice");

# Restaurants - 3
SELECT * FROM Restaurant;
INSERT INTO Restaurant VALUES('188753', 'Richardson'); 
INSERT INTO Restaurant VALUES('639853', 'Frisco');
INSERT INTO Restaurant VALUES('885269', 'Dallas');

# Restaurant Type
SELECT * FROM RestaurantType;
INSERT INTO RestaurantType VALUES('188753', 'Deli / Lunch'); 
INSERT INTO RestaurantType VALUES('639853', 'Fast Food');
INSERT INTO RestaurantType VALUES('885269', 'Italian Food');

# Supermarket
SELECT * FROM Supermarket;
INSERT INTO Supermarket VALUES('190859');
INSERT INTO Supermarket VALUES('903488');
INSERT INTO Supermarket VALUES('428176');

# Product - 12 
SELECT * FROM Product;
INSERT INTO Product VALUES('6009633077', '188753', 'Reuben Sandwich', 'Beefy sandwich with chips!', '25'); 
INSERT INTO Product VALUES('6006509240', '639853', 'Big Mac', 'A delicious burger with two patties', '50');
INSERT INTO Product VALUES('6006509241', '639853', 'French Fries', 'Crispy Fries', '50');
INSERT INTO Product VALUES('0087179217', '885269', 'Spagetti', 'Spagetti and Marinara', '60');
INSERT INTO Product VALUES('1694583761', '190859', 'Red Shirt', 'A small red shirt', '24');
INSERT INTO Product VALUES('1694583762', '190859', 'Blue Shirt', 'A small blue shirt', '24');
INSERT INTO Product VALUES('1694583763', '190859', 'Green Shirt', 'A small green shirt', '24');
INSERT INTO Product VALUES('2275300007', '903488', 'Plates', 'Ceramic plates for dining', '45');
INSERT INTO Product VALUES('1694583761', '903488', 'Red Shirt', 'A small red shirt', '56');
INSERT INTO Product VALUES('9105437266', '428176', 'Chicken', 'Yummy chicken', '34');
INSERT INTO Product VALUES('9105437267', '428176', 'Beef', 'Fresh beef', '34');
INSERT INTO Product VALUES('9105437268', '428176', 'Turkey', 'Big turkey', '34');

# Sell
SELECT * FROM Sell;
INSERT INTO Sell VALUES('188753', '6009633077', '10.99'); 
INSERT INTO Sell VALUES('639853', '6006509240', '4.99');
INSERT INTO Sell VALUES('639853', '6006509241', '2.99');
INSERT INTO Sell VALUES('885269', '0087179217', '9.99');
INSERT INTO Sell VALUES('190859', '1694583761', '4.99');
INSERT INTO Sell VALUES('190859', '1694583762', '5.03');
INSERT INTO Sell VALUES('190859', '1694583763', '5.57');
INSERT INTO Sell VALUES('903488', '2275300007', '24.99');
INSERT INTO Sell VALUES('903488', '1694583761', '5.99');
INSERT INTO Sell VALUES('428176', '9105437266', '9.99');
INSERT INTO Sell VALUES('428176', '9105437267', '10.99');
INSERT INTO Sell VALUES('428176', '9105437268', '8.99');


# Orders
SELECT * FROM Orders;
INSERT INTO Orders VALUES("248194927", "S2", "E173", "EJW5342", 3, "Good!")
INSERT INTO Shop VALUES('188753'); 
INSERT INTO Shop VALUES('639853');
INSERT INTO Shop VALUES('885269');
INSERT INTO Shop VALUES('190859');
INSERT INTO Shop VALUES('903488');
INSERT INTO Shop VALUES('428176');

# Payment
SELECT * FROM Payment;
INSERT INTO  VALUES();
