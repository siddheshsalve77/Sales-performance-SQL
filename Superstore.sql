CREATE TABLE Sales (
  Row_ID SERIAL PRIMARY KEY,
  Order_ID VARCHAR(50),
  Order_Date DATE,
  Ship_Date DATE,
  Ship_Mode VARCHAR(50),
  Customer_ID VARCHAR(50),
  Customer_Name VARCHAR(100),
  Segment VARCHAR(50),
  Country VARCHAR(50),
  City VARCHAR(100),
  State VARCHAR(50),
  Postal_Code VARCHAR(20),
  Region VARCHAR(50),
  Product_ID VARCHAR(50),
  Category VARCHAR(50),
  Sub_Category VARCHAR(50),
  Sales NUMERIC(12,2),
  Quantity INTEGER,
  Discount NUMERIC(5,2),
  Profit NUMERIC(12,2)
);

--Importing table data from Superstore_Order.csv
SELECT * FROM Sales
