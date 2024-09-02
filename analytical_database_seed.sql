-- Create DimCustomer Table
CREATE TABLE DimCustomer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    ZipCode VARCHAR(10)
);

-- Create DimProduct Table
CREATE TABLE DimProduct (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Create DimCategory Table
CREATE TABLE DimCategory (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

-- Create DimDate Table
CREATE TABLE DimDate (
    DateID INT PRIMARY KEY,
    Date DATE,
    Year INT,
    Quarter INT,
    Month INT,
    Day INT,
    Week INT,
    DayOfWeek VARCHAR(10)
);

-- Create FactSales Table
CREATE TABLE FactSales (
    SalesID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ProductID INT,
    CategoryID INT,
    DateID INT,
    SalesAmount DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    TotalCost DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES DimProduct(ProductID),
    FOREIGN KEY (CategoryID) REFERENCES DimCategory(CategoryID),
    FOREIGN KEY (DateID) REFERENCES DimDate(DateID)
);

-- Insert Mock Data into DimCustomer
INSERT INTO DimCustomer (CustomerID, FirstName, LastName, Email, City, State, ZipCode)
VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', 'Springfield', 'IL', '62704'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'Springfield', 'IL', '62704'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 'Springfield', 'IL', '62704'),
(4, 'Bob', 'Brown', 'bob.brown@example.com', 'Springfield', 'IL', '62704'),
(5, 'Eve', 'White', 'eve.white@example.com', 'Springfield', 'IL', '62704');

-- Insert Mock Data into DimProduct
INSERT INTO DimProduct (ProductID, ProductName, Category, Price)
VALUES 
(1, 'Laptop', 'Electronics', 999.99),
(2, 'Smartphone', 'Electronics', 699.99),
(3, 'Headphones', 'Electronics', 199.99),
(4, 'Blender', 'Home Appliances', 49.99),
(5, 'Vacuum Cleaner', 'Home Appliances', 129.99),
(6, 'Novel', 'Books', 19.99),
(7, 'Cookbook', 'Books', 24.99);

-- Insert Mock Data into DimCategory
INSERT INTO DimCategory (CategoryID, CategoryName)
VALUES 
(1, 'Electronics'),
(2, 'Home Appliances'),
(3, 'Books');

-- Insert Mock Data into DimDate
INSERT INTO DimDate (DateID, Date, Year, Quarter, Month, Day, Week, DayOfWeek)
VALUES 
(1, '2024-08-01', 2024, 3, 8, 1, 31, 'Thursday'),
(2, '2024-08-15', 2024, 3, 8, 15, 33, 'Thursday'),
(3, '2024-09-01', 2024, 3, 9, 1, 35, 'Sunday'),
(4, '2024-09
