INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(1,"Jason","Gibbs", "Pilot",  '2008-06-11', "Active");
INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(2,"Ruben","Bradley", "Co-Pilot",  '2008-04-11',"Active");
INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(3,"Bob","Bailey", "Co-Pilot",  '2008-11-11', "Inactive");
INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(4,"Lana","Moran", "Pilot",  '2012-2-14',"Inactive");
INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(5,"Gerard","Fuller", "Steward",  '2008-04-11',"Inactive");
INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(6,"Courtney","Schultz", "Steward",  '2008-06-11',"Active");
INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(7,"Marty","Norman", "Steward",  '2008-11-11',"Active");
INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(8,"Alyssa","Willis", "Customer Service",  '2014-12-06',"Active");
INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(9,"Silvia","Stevenson", "Baggage",  '2017-11-05',"Active");
INSERT INTO Employees(Employee_ID,  Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES(10,"Angie","Walters", "Baggage",  '2008-11-10',"Active");

INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (1,1);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (1,2); 
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (1,6);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (1,7);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (1,8);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (1,9);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (1,10);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (2,1);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (2,2);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (2,6);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (2,8);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (2,9);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (2,10);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (3,1);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (3,2);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (3,6);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (3,7);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (3,8);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (3,9);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (4,1);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (4,2);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (4,6);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (4,7);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (4,8);
INSERT INTO flight_assignment( Flight_ID, Employee_ID) VALUES (4,9);

INSERT INTO Flight_Information(Flight_ID, Airplane_ID, Destination, Start, Depart_Time, Arrival_Time,Flight_Status) VALUES(1,1,3,5,"2017-11-5 13:10:11","2017-11-5 16:10:11","Active");
INSERT INTO Flight_Information(Flight_ID, Airplane_ID, Destination, Start, Depart_Time, Arrival_Time,Flight_Status) VALUES(2,2,4,2,"2017-12-5 08:00:00","2017-12-5 11:00:00","Active");
INSERT INTO Flight_Information(Flight_ID, Airplane_ID, Destination, Start, Depart_Time, Arrival_Time,Flight_Status) VALUES(3,3,1,5,"2017-08-5 09:00:00","2017-08-5 12:00:00","Inactive");
INSERT INTO Flight_Information(Flight_ID, Airplane_ID, Destination, Start, Depart_Time, Arrival_Time,Flight_Status) VALUES(4,2,2,5,"2017-11-10 18:00:00","2017-11-10 23:00:00","Active");

INSERT INTO airports(Airport_ID, Airport_Name, Airport_Code, Airport_State) VALUES(1,"Newark Liberty International","EWR","NJ");
INSERT INTO airports(Airport_ID, Airport_Name, Airport_Code, Airport_State) VALUES(2,"John F.Kennedy International","JFK","NY");
INSERT INTO airports(Airport_ID, Airport_Name, Airport_Code, Airport_State) VALUES(3,"Old Bridge Airport","3N6","NJ");
INSERT INTO airports(Airport_ID, Airport_Name, Airport_Code, Airport_State) VALUES(4,"Princeton Airport","39N","NJ");
INSERT INTO airports(Airport_ID, Airport_Name, Airport_Code, Airport_State) VALUES(5,"Philadelphia International","PHL","PA");

INSERT INTO airplanes(Airplane_ID, Capacity, Last_Maintained, Airplane_Type, Airplane_Status) VALUES(1,60,'2017-04-05',"Dornier Do 228","Active");
INSERT INTO airplanes(Airplane_ID, Capacity, Last_Maintained, Airplane_Type, Airplane_Status) VALUES(2,100,'2017-06-10',"Fokker 70","Active");
INSERT INTO airplanes(Airplane_ID, Capacity, Last_Maintained, Airplane_Type, Airplane_Status) VALUES(3,100,'2017-06-30',"Fokker 70","Active");

INSERT INTO customer_assignment(Customer_ID, Flight_ID, Seat_ID) VALUES(1,1,1);
INSERT INTO customer_assignment(Customer_ID, Flight_ID, Seat_ID) VALUES(2,2,5);
INSERT INTO customer_assignment(Customer_ID, Flight_ID, Seat_ID) VALUES(3,3,6);
INSERT INTO customer_assignment(Customer_ID, Flight_ID, Seat_ID) VALUES(4,4,4);
INSERT INTO customer_assignment(Customer_ID, Flight_ID, Seat_ID) VALUES(5,4,2);

INSERT INTO Seat_Prices(Seat_ID,Flight_ID, Seat_Class, Seat_Price) VALUES(1,1,1,100);
INSERT INTO Seat_Prices(Seat_ID,Flight_ID, Seat_Class, Seat_Price) VALUES(2,4,1,110);
INSERT INTO Seat_Prices(Seat_ID,Flight_ID, Seat_Class, Seat_Price) VALUES(3,3,1,110);
INSERT INTO Seat_Prices(Seat_ID,Flight_ID, Seat_Class, Seat_Price) VALUES(4,4,2,90);
INSERT INTO Seat_Prices(Seat_ID,Flight_ID, Seat_Class, Seat_Price) VALUES(5,2,3,80);
INSERT INTO Seat_Prices(Seat_ID,Flight_ID, Seat_Class, Seat_Price) VALUES(6,3,2,90);

INSERT INTO customers(Customer_ID, Customer_First_Name, Customer_Last_Name, Customer_Status, Phone_Number, Street, City, Zip_Code, Customer_State) VALUES(1,"Stewart","Ray","Active",7326548490,"43 Hartwell Street","New Brunswick",08901,"NJ");
INSERT INTO customers(Customer_ID, Customer_First_Name, Customer_Last_Name, Customer_Status, Phone_Number, Street, City, Zip_Code, Customer_State) VALUES(2,"Glenn","Medina","Active",6092176498,"46 Van Wyck Dr","West Windsor",08550,"NJ");
INSERT INTO customers(Customer_ID, Customer_First_Name, Customer_Last_Name, Customer_Status, Phone_Number, Street, City, Zip_Code, Customer_State) VALUES(3,"Kenny","Morgan","Inactive",7321516416,"26 Division Street","New Brunswick",08901,"NJ");
INSERT INTO customers(Customer_ID, Customer_First_Name, Customer_Last_Name, Customer_Status, Phone_Number, Street, City, Zip_Code, Customer_State) VALUES(4,"Leigh","Delgado","Active",7326514912,"287 Handy Street","New Brunswick",08901,"NJ");
INSERT INTO customers(Customer_ID, Customer_First_Name, Customer_Last_Name, Customer_Status, Phone_Number, Street, City, Zip_Code, Customer_State) VALUES(5,"Mable","Sutton","Active",9081514641,"17 Shetland Green","Montgomery",08502,"NJ");
