CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Staff_Name NVARCHAR(255) NOT NULL,
    Phone_Number NVARCHAR(15),
    Email NVARCHAR(255),
    Address NVARCHAR(255),
    Type NVARCHAR(50) NOT NULL
);

CREATE TABLE Work_shift (
    Workshift_ID INT PRIMARY KEY,
    Staff_ID INT FOREIGN KEY REFERENCES Staff(Staff_ID),
    Begin_time TIME NOT NULL,
    End_time TIME NOT NULL,
    [Date] DATE NOT NULL,
    Shift_type NVARCHAR(50) NOT NULL
);

CREATE TABLE Mistake (
    MistakeID INT PRIMARY KEY,
    Staff_ID INT NOT NULL FOREIGN KEY REFERENCES Staff(Staff_ID),
    [Date] DATE NOT NULL,
    Penalty INT NOT NULL,
    Detail NVARCHAR(500)
);

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Phone_Number NVARCHAR(15),
    Accumulated_Points INT DEFAULT 0
);

CREATE TABLE Membership (
    Customer_ID INT PRIMARY KEY,
    Type NVARCHAR(50) NOT NULL,
    Start_Date DATE NOT NULL,
    End_Date DATE NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Staff_ID INT NOT NULL FOREIGN KEY REFERENCES Staff(Staff_ID),
    Customer_ID INT NOT NULL FOREIGN KEY REFERENCES Customers(Customer_ID),
    Order_Date DATETIME NOT NULL,
    Complete_Date DATETIME,
    Payment_Method NVARCHAR(50) NOT NULL
);

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Brand NVARCHAR(255) NOT NULL,
    Name NVARCHAR(255) NOT NULL,
    Sale_Price INT NOT NULL
);

CREATE TABLE Has_Product (
    Order_ID INT NOT NULL FOREIGN KEY REFERENCES Orders(Order_ID),
    Product_ID INT NOT NULL FOREIGN KEY REFERENCES Product(Product_ID),
    Number_of_Units INT NOT NULL,
    PRIMARY KEY (Order_ID, Product_ID)
);

CREATE TABLE Import_Record (
    [Date] DATE NOT NULL,
    Product_ID INT NOT NULL FOREIGN KEY REFERENCES Product(Product_ID),
    Number_of_Unit INT NOT NULL,
    Price INT NOT NULL,
    PRIMARY KEY ([Date], Product_ID)
);