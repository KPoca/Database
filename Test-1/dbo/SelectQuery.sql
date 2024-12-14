CREATE VIEW Staff_Info AS
SELECT 
    s.Staff_ID,
    s.Staff_Name,
    s.Phone_Number,
    s.Email,
    s.Address,
    s.Type,
    ws.Workshift_ID,
    ws.Begin_time,
    ws.End_time,
    ws.Date AS Work_Date,
    ws.Shift_type
FROM 
    Staff s
JOIN 
    Work_shift ws ON s.Staff_ID = ws.Staff_ID;

----

CREATE VIEW Customer_Info AS
SELECT 
    c.Customer_ID,
    c.Name AS Customer_Name,
    c.Phone_Number,
    c.Accumulated_Points,
    m.Type AS Membership_Type,
    m.Start_Date,
    m.End_Date
FROM 
    Customers c
JOIN 
    Membership m ON c.Customer_ID = m.Customer_ID;

----

CREATE VIEW Product_Orders AS
SELECT 
    o.Order_ID,
    o.Order_Date,
    o.Customer_ID,
    p.Product_ID,
    p.Name AS Product_Name,
    p.Sale_Price,
    hp.Number_of_Units
FROM 
    Orders o
JOIN 
    Has_Product hp ON o.Order_ID = hp.Order_ID
JOIN 
    Product p ON hp.Product_ID = p.Product_ID;

----

CREATE VIEW Mistakes_Penalties AS
SELECT 
    m.MistakeID,
    m.Staff_ID,
    s.Staff_Name,
    m.Date AS Mistake_Date,
    m.Penalty,
    m.Detail
FROM 
    Mistake m
JOIN 
    Staff s ON m.Staff_ID = s.Staff_ID;

----

CREATE VIEW Orders_With_Staff AS
SELECT 
    o.Order_ID,
    o.Order_Date,
    o.Payment_Method,
    o.Staff_ID,
    s.Staff_Name
FROM 
    Orders o
JOIN 
    Staff s ON o.Staff_ID = s.Staff_ID;

----

CREATE VIEW Membership_Expiry AS
SELECT 
    c.Customer_ID,
    c.Name AS Customer_Name,
    m.Type AS Membership_Type,
    m.End_Date
FROM 
    Customers c
JOIN 
    Membership m ON c.Customer_ID = m.Customer_ID
WHERE 
    m.End_Date < GETDATE(); -- Thẻ thành viên đã hết hạn

----

CREATE VIEW Product_Import_Record AS
SELECT 
    e.Date AS Import_Date,
    p.Product_ID,
    p.Name AS Product_Name,
    e.Number_of_Unit,
    e.Price
FROM 
    Import_Record e
JOIN 
    Product p ON e.Product_ID = p.Product_ID;

----

CREATE VIEW Staff_Mistakes AS
SELECT 
    s.Staff_ID,
    s.Staff_Name,
    COUNT(m.MistakeID) AS Number_of_Mistakes,
    SUM(m.Penalty) AS Total_Penalty
FROM 
    Staff s
LEFT JOIN 
    Mistake m ON s.Staff_ID = m.Staff_ID
GROUP BY 
    s.Staff_ID, s.Staff_Name;

----

CREATE VIEW Top_Customers AS
SELECT TOP 10 -- Lấy 10 khách hàng có điểm tích lũy cao nhất
    c.Customer_ID,
    c.Name AS Customer_Name,
    c.Accumulated_Points
FROM 
    Customers c
ORDER BY 
    c.Accumulated_Points DESC;

----

CREATE VIEW Product_Sales AS
SELECT 
    p.Product_ID,
    p.Name AS Product_Name,
    SUM(hp.Number_of_Units) AS Total_Sales,
    SUM(hp.Number_of_Units * p.Sale_Price) AS Total_Revenue
FROM 
    Has_Product hp
JOIN 
    Product p ON hp.Product_ID = p.Product_ID
GROUP BY 
    p.Product_ID, p.Name;

----

-- CREATE VIEW Staff_Salary AS
-- SELECT
--     c.Staff_ID,
--     c.Begin_time AS ,
--     c.End_time,
--     
-- FROM 
--     Staff c
-- ORDER BY 
--     c.Accumulated_Points DESC;

----

