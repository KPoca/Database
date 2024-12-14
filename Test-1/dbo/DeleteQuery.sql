CREATE PROCEDURE Work_shift_Delete
    @Workshift_ID INT
AS
BEGIN
    DELETE FROM Work_shift WHERE Workshift_ID = @Workshift_ID;
END;
EXEC Work_shift_Delete
    @Workshift_ID = 9;

----

-- CREATE PROCEDURE Staff_Delete
--     @Staff_ID INT
-- AS
-- BEGIN
--     DELETE FROM Orders WHERE Staff_ID = @Staff_ID;
--     DELETE FROM Mistake WHERE Staff_ID = @Staff_ID;
--     DELETE FROM Work_shift WHERE Staff_ID = @Staff_ID;
--     DELETE FROM Staff WHERE Staff_ID = @Staff_ID;
-- END;

----

CREATE PROCEDURE Mistake_Delete
    @MistakeID INT
AS
BEGIN
    DELETE FROM Mistake WHERE MistakeID = @MistakeID;
END;
EXEC Mistake_Delete
    @MistakeID = 2;

----

CREATE PROCEDURE Membership_Delete
    @Customer_ID INT
AS
BEGIN
    DELETE FROM Membership WHERE Customer_ID = @Customer_ID;
END;
EXEC Membership_Delete
    @Customer_ID = 1;

----

-- CREATE PROCEDURE Customers_Delete
--     @Customer_ID INT
-- AS
-- BEGIN
--     DELETE FROM Customers WHERE Customer_ID = @Customer_ID;
-- END;

----

CREATE PROCEDURE Orders_Delete
    @Order_ID INT
AS
BEGIN
    DELETE FROM Has_Product WHERE Order_ID = @Order_ID;
    DELETE FROM Orders WHERE Order_ID = @Order_ID;
END;
EXEC Orders_Delete
    @Order_ID = 8;

----

CREATE PROCEDURE Product_Delete
    @Product_ID INT
AS
BEGIN
    DELETE FROM Has_Product WHERE Product_ID = @Product_ID;
    DELETE FROM Import_Record WHERE Product_ID = @Product_ID;
    DELETE FROM Product WHERE Product_ID = @Product_ID;
END;
EXEC Product_Delete
    @Product_ID = 4;

----

-- CREATE PROCEDURE Import_Record_Delete
--     @[Date] DATE,
--     @Product_ID INT
-- AS
-- BEGIN
--     DELETE FROM Import_Record WHERE [Date] = @[Date] AND Product_ID = @Product_ID;
-- END;
