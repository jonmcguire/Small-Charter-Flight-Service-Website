create table Employees (
	Employee_ID int not null primary key auto_increment,
    Employee_First_Name varchar(30),
    Employee_Last_Name varchar(30),
    Job_Title varchar(30),
    Hire_Date date,
    Employee_Status varchar(30)
    );
    
    
create table Flight_Assignment (
	Flight_ID int,
    Employee_ID int,
	FOREIGN KEY(Flight_ID) REFERENCES Flight_Information(Flight_ID),
    FOREIGN KEY(Employee_ID) REFERENCES Employees(Employee_ID)
    );
    
create table Flight_Information(
	Flight_ID int auto_increment not null primary key,
    Airplane_ID int,
    Destination int,
    Start int,
    Depart_Time datetime,
    Arrival_Time datetime,
	Flight_Status varchar(30),
    FOREIGN KEY(Airplane_ID) REFERENCES Airplanes(Airplane_ID),
    FOREIGN KEY(Destination) REFERENCES Airports(Airport_ID),
    FOREIGN KEY(Start) REFERENCES Airports(Airport_ID)
    );
    
create table Airplanes(
	Airplane_ID int not null unique primary key auto_increment,
    Capacity int,
    Last_Maintained Date,
    Airplane_Type varchar(30),
    Airplane_Status varchar(30)
    );
    
create table Airports(
	Airport_ID int not null unique primary key auto_increment,
    Airport_Name varchar(30),
	Airport_Code varchar(6),
    Airport_State char(2)
    );

create table Customer_Assignment(
	Customer_ID int unique,
    Flight_ID int,
    Seat_ID int,
    FOREIGN KEY(Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY(Flight_ID) REFERENCES Flight_Information(Flight_ID),
    FOREIGN KEY(Seat_ID) REFERENCES Seat_Prices(Seat_ID)
    );
    
create table Seat_Prices(
	Seat_ID int not null primary key auto_increment,
    Flight_ID int,
    Seat_Class varchar(30),
    Seat_Price int,
    FOREIGN KEY(Flight_ID) REFERENCES Customer_Assignment(Flight_ID)
    );

create table Customers(
	Customer_ID int not null primary key auto_increment,
    Customer_First_Name varchar(30),
    Customer_Last_Name varchar(30),
    Customer_status varchar(30),
    Phone_Number varchar(16),
    Street varchar(30),
    City varchar(30),
    Zip_Code varchar(6),
    Customer_State char(2)
    );
