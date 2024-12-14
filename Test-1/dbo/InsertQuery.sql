CREATE PROCEDURE Staff_Insert
    @Staff_ID INT,
    @Staff_Name NVARCHAR(100),
    @Phone_Number NVARCHAR(15),
    @Email NVARCHAR(100),
    @Address NVARCHAR(200),
    @Type NVARCHAR(50)
AS
BEGIN
    INSERT INTO Staff (Staff_ID, Staff_Name, Phone_Number, Email, Address, Type)
    VALUES (@Staff_ID, @Staff_Name, @Phone_Number, @Email, @Address, @Type);
END;
EXEC Staff_Insert
    @Staff_ID = 6,
    @Staff_Name = "Lutwidge K. Poca",
    @Phone_Number = 0918442717,
    @Email = "poca@chan.work.jp",
    @Address = "268, Ly Thuong Kiet",
    @Type = "Saler";
    
----

CREATE PROCEDURE Work_shift_Insert
    @Workshift_ID INT,
    @Staff_ID INT,
    @Begin_time TIME,
    @End_time TIME,
    @Date DATE,
    @Shift_type NVARCHAR(50)
AS
BEGIN
    INSERT INTO Work_shift (Workshift_ID, Staff_ID, Begin_time, End_time, [Date], Shift_type)
    VALUES (@Workshift_ID, @Staff_ID, @Begin_time, @End_time, @Date, @Shift_type);
END;
EXEC Work_shift_Insert
    @Workshift_ID = 12,
    @Staff_ID = 3,
    @Begin_time = "8:00",
    @End_time = "12:30",
    @Date = "2024-01-12",
    @Shift_type = "Standard";

----

CREATE PROCEDURE Mistake_Insert
    @MistakeID INT,
    @Staff_ID INT,
    @Date DATE,
    @Penalty INT,
    @Detail NVARCHAR(500)
AS
BEGIN
    INSERT INTO Mistake (MistakeID, Staff_ID, [Date], Penalty, Detail)
    VALUES (@MistakeID, @Staff_ID, @Date, @Penalty, @Detail);
END;
EXEC Mistake_Insert
    @MistakeID = 2,
    @Staff_ID = 1,
    @Date = "2024-09-02",
    @Penalty = "500",
    @Detail = "Destruction of property"

----

CREATE PROCEDURE Membership_Insert
    @Customer_ID INT,
    @Type NVARCHAR(50),
    @Start_Date DATE,
    @End_Date DATE
AS
BEGIN
    INSERT INTO Membership (Customer_ID, Type, Start_Date, End_Date)
    VALUES (@Customer_ID, @Type, @Start_Date, @End_Date);
END;
EXEC Membership_Insert
    @Customer_ID = 12,
    @Type = "Bronze",
    @Start_Date = "2024-12-23",
    @End_Date = "2025-12-23";

----

CREATE PROCEDURE Customers_Insert
    @Customer_ID INT,
    @Name NVARCHAR(100),
    @Phone_Number NVARCHAR(15)
AS
BEGIN
    INSERT INTO Customers (Customer_ID, Name, Phone_Number)
    VALUES (@Customer_ID, @Name, @Phone_Number);
END;
EXEC Customers_Insert
    @Customer_ID = 12,
    @Name = "Tran Van An",
    @Phone_Number = "0987654321";

----

CREATE PROCEDURE Orders_Insert
    @Order_ID INT,
    @Staff_ID INT,
    @Customer_ID INT,
    @Order_Date DATE,
    @Complete_Date DATE,
    @Payment_Method NVARCHAR(50)
AS
BEGIN
    INSERT INTO Orders (Order_ID, Staff_ID, Customer_ID, Order_Date, Complete_Date, Payment_Method)
    VALUES (@Order_ID, @Staff_ID, @Customer_ID, @Order_Date, @Complete_Date, @Payment_Method);
END;
EXEC Orders_Insert
    @Order_ID = 12,
    @Staff_ID = 6,
    @Customer_ID = 2,
    @Order_Date = "2024-12-10",
    @Complete_Date = NULL,
    @Payment_Method = "Momo";

----

CREATE PROCEDURE Has_Product_Insert
    @Order_ID INT,
    @Product_ID INT,
    @Number_of_Units INT
AS
BEGIN
    INSERT INTO Has_Product (Order_ID, Product_ID, Number_of_Units)
    VALUES (@Order_ID, @Product_ID, @Number_of_Units);
END;
EXEC Has_Product_Insert
    @Order_ID = 8,
    @Product_ID = 3,
    @Number_of_Units = 10;

----

CREATE PROCEDURE Product_Insert
    @Product_ID INT,
    @Brand NVARCHAR(100),
    @Name NVARCHAR(100),
    @Sale_Price DECIMAL(18, 2)
AS
BEGIN
    INSERT INTO Product (Product_ID, Brand, Name, Sale_Price)
    VALUES (@Product_ID, @Brand, @Name, @Sale_Price);
END;
EXEC Product_Insert
    @Product_ID = 16,
    @Brand = "Disney",
    @Name = "Super saiyan",
    @Sale_Price = 280;

----

CREATE PROCEDURE Import_Record_Insert
    @Date DATE,
    @Product_ID INT,
    @Number_of_Unit INT,
    @Price INT
AS
BEGIN
    INSERT INTO Import_Record (Date, Product_ID, Number_of_Unit, Price)
    VALUES (@Date, @Product_ID, @Number_of_Unit, @Price);
END;
EXEC Import_Record_Insert 
    @Date = "2024-12-10", 
    @Product_ID = 3, 
    @Number_of_Unit = 50,
    @Price = 500;