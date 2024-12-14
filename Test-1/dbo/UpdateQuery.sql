CREATE PROCEDURE Staff_Update
    @Staff_ID INT,
    @Staff_Name NVARCHAR(100),
    @Phone_Number NVARCHAR(15),
    @Email NVARCHAR(100),
    @Address NVARCHAR(200),
    @Type NVARCHAR(50)
AS
BEGIN
    UPDATE Staff
    SET Staff_Name = @Staff_Name,
        Phone_Number = @Phone_Number,
        Email = @Email,
        Address = @Address,
        Type = @Type
    WHERE Staff_ID = @Staff_ID;
END;
EXEC Staff_Update
    @Staff_ID = 11,
    @Staff_Name = "Chill Guy",
    @Phone_Number = "088888888",
    @Email = "hello@game.vn",
    @Address = "497 Hoa Hao",
    @Type = "Saler";

----

CREATE PROCEDURE Mistake_Update
    @MistakeID INT,
    @Staff_ID INT,
    @Date DATE,
    @Penalty INT,
    @Detail NVARCHAR(500)
AS
BEGIN
    UPDATE Mistake
    SET Staff_ID = @Staff_ID,
        [Date] = @Date,
        Penalty = @Penalty,
        Detail = @Detail
    WHERE MistakeID = @MistakeID;
END;
EXEC Mistake_Update
    @MistakeID = 11,
    @Staff_ID = 4,
    @Date = "2021-10-22",
    @Penalty = 200,
    @Detail = "customer racist";

----

CREATE PROCEDURE Membership_Update
    @Customer_ID INT,
    @Type NVARCHAR(50),
    @Start_Date DATE,
    @End_Date DATE
AS
BEGIN
    UPDATE Membership
    SET Type = @Type,
        Start_Date = @Start_Date,
        End_Date = @End_Date
    WHERE Customer_ID = @Customer_ID;
END;
EXEC Membership_Update
    @Customer_ID = 6,
    @Type = Gold,
    @Start_Date = "2023-01-12",
    @End_Date = "2024-01-12";

----

CREATE PROCEDURE Customers_Update
    @Customer_ID INT,
    @Name NVARCHAR(100),
    @Phone_Number NVARCHAR(15),
    @Accumulated_Points INT
AS
BEGIN
    UPDATE Customers
    SET Name = @Name,
        Phone_Number = @Phone_Number,
        Accumulated_Points = @Accumulated_Points
    WHERE Customer_ID = @Customer_ID;
END;
EXEC Customers_Update
    @Customer_ID = 8,
    @Name = "Eroheta",
    @Phone_Number = "0987654321",
    @Accumulated_Points = 10;

----

CREATE PROCEDURE Orders_Update
    @Order_ID INT,
    @Staff_ID INT,
    @Customer_ID INT,
    @Order_Date DATE,
    @Complete_Date DATE,
    @Payment_Method NVARCHAR(50)
AS
BEGIN
    UPDATE Orders
    SET Staff_ID = @Staff_ID,
        Customer_ID = @Customer_ID,
        Order_Date = @Order_Date,
        Complete_Date = @Complete_Date,
        Payment_Method = @Payment_Method
    WHERE Order_ID = @Order_ID;
END;
EXEC Orders_Update
    @Order_ID = 6,
    @Staff_ID = 3,
    @Customer_ID = 9,
    @Order_Date = "2024-09-10",
    @Complete_Date = "2024-09-11",
    @Payment_Method = "Paypal";

----

CREATE PROCEDURE Has_Product_Update
    @Order_ID INT,
    @Product_ID INT,
    @Number_of_Units INT
AS
BEGIN
    UPDATE Has_Product
    SET Number_of_Units = @Number_of_Units
    WHERE Order_ID = @Order_ID AND Product_ID = @Product_ID;
END;
EXEC Has_Product_Update
    @Order_ID = 4,
    @Product_ID  = 2,
    @Number_of_Units = 48;

----

CREATE PROCEDURE Product_Update
    @Product_ID INT,
    @Brand NVARCHAR(100),
    @Name NVARCHAR(100),
    @Sale_Price INT
AS
BEGIN
    UPDATE Product
    SET Brand = @Brand,
        Name = @Name,
        Sale_Price = @Sale_Price
    WHERE Product_ID = @Product_ID;
END;
EXEC Product_Update
    @Product_ID = 8,
    @Brand = "Nintendo",
    @Name = "HelloWorld",
    @Sale_Price = 500;

----

-- CREATE PROCEDURE Import_Record_Update
--     @[Date] DATE,
--     @Product_ID INT,
--     @Number_of_Unit INT
-- AS
-- BEGIN
--     UPDATE Import_Record
--     SET Number_of_Unit = @Number_of_Unit
--     WHERE [Date] = @[Date] AND Product_ID = @Product_ID;
-- END;