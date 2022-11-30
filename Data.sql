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

# Premium Member - 14
SELECT * FROM PremiumMember;
INSERT INTO PremiumMember VALUES('P87120');
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

SELECT * FROM PhoneNumber;
INSERT INTO  VALUES();

SELECT * FROM OrdinaryCustomer;
INSERT INTO  VALUES();

SELECT * FROM SilverMember;
INSERT INTO  VALUES();

SELECT * FROM Staff;
INSERT INTO Staff VALUES('E083');
INSERT INTO Staff VALUES('E763');
INSERT INTO Staff VALUES('E394');
INSERT INTO Staff VALUES('E094');
INSERT INTO Staff VALUES('E875');
INSERT INTO Staff VALUES('E346');
INSERT INTO Staff VALUES('E986');
INSERT INTO Staff VALUES('E999');

SELECT * FROM AreaManager;
INSERT INTO AreaManager VALUES('E331', "Plano");
-- INSERT INTO  VALUES('E111');
-- INSERT INTO  VALUES('E237');
-- INSERT INTO  VALUES('E983');
-- INSERT INTO  VALUES('E764');
-- INSERT INTO  VALUES('E123');
-- INSERT INTO  VALUES('E468');

SELECT * FROM Deliverer;
INSERT INTO Deliverer VALUES('E394', 'E111');
INSERT INTO Deliverer VALUES('E094', 'E237');
INSERT INTO Deliverer VALUES('E875', 'E983');
INSERT INTO Deliverer VALUES('E346', 'E764');
INSERT INTO Deliverer VALUES('E986', 'E123');
INSERT INTO Deliverer VALUES('E999', 'E468');

SELECT * FROM MemberCard;
INSERT INTO  VALUES();

SELECT * FROM Vehicle;
INSERT INTO  VALUES();

SELECT * FROM MealPass;
INSERT INTO  VALUES();

SELECT * FROM Shop;
INSERT INTO  VALUES();

SELECT * FROM OpeningTime;
INSERT INTO  VALUES();

SELECT * FROM ClosingTime;
INSERT INTO  VALUES();

SELECT * FROM MakeContract;
INSERT INTO  VALUES();

SELECT * FROM Promotion;
INSERT INTO  VALUES();

SELECT * FROM Comment;
INSERT INTO  VALUES();

SELECT * FROM Restaurant;
INSERT INTO  VALUES();

SELECT * FROM RestaurantType;
INSERT INTO  VALUES();

SELECT * FROM Supermarket;
INSERT INTO  VALUES();

SELECT * FROM Product;
INSERT INTO  VALUES();

SELECT * FROM Sell;
INSERT INTO  VALUES();

SELECT * FROM Orders;
INSERT INTO Orders VALUES("248194927", "S2", "E173", "EJW5342", 3, "Good!")

SELECT * FROM Payment;
INSERT INTO  VALUES();