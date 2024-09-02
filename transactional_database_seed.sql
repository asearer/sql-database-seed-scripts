-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    ZipCode VARCHAR(10),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Categories Table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100),
    Description TEXT
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Description TEXT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    TotalAmount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    ShippingAddress VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create OrderItems Table
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert Mock Data into Customers
INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, Address, City, State, ZipCode)
VALUES 
('John', 'Doe', 'john.doe@example.com', '555-1234', '123 Maple St', 'Springfield', 'IL', '62704'),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '456 Oak St', 'Springfield', 'IL', '62704'),
('Alice', 'Johnson', 'alice.johnson@example.com', '555-9101', '789 Pine St', 'Springfield', 'IL', '62704'),
('Bob', 'Brown', 'bob.brown@example.com', '555-1122', '321 Birch St', 'Springfield', 'IL', '62704'),
('Eve', 'White', 'eve.white@example.com', '555-1314', '654 Cedar St', 'Springfield', 'IL', '62704');

-- Insert Mock Data into Categories
INSERT INTO Categories (CategoryName, Description)
VALUES 
('Electronics', 'Devices and gadgets like phones, laptops, and accessories.'),
('Home Appliances', 'Appliances and devices used in households.'),
('Books', 'Printed and digital books across various genres.');

-- Insert Mock Data into Products
INSERT INTO Products (ProductName, CategoryID, Price, StockQuantity, Description)
VALUES 
('Laptop', 1, 999.99, 50, 'A high-performance laptop with 16GB RAM and 512GB SSD.'),
('Smartphone', 1, 699.99, 150, 'Latest model smartphone with 128GB storage and 12MP camera.'),
('Headphones', 1, 199.99, 300, 'Noise-cancelling over-ear headphones with Bluetooth connectivity.'),
('Blender', 2, 49.99, 100, 'A powerful blender with 3-speed settings and a 1.5L jug.'),
('Vacuum Cleaner', 2, 129.99, 75, 'Lightweight vacuum cleaner with HEPA filter.'),
('Novel', 3, 19.99, 200, 'Bestselling novel with an intriguing storyline.'),
('Cookbook', 3, 24.99, 150, 'A collection of gourmet recipes from around the world.');

-- Insert Mock Data into Orders
INSERT INTO Orders (CustomerID, Status, TotalAmount, PaymentMethod, ShippingAddress)
VALUES 
(1, 'Shipped', 1199.98, 'Credit Card', '123 Maple St, Springfield, IL, 62704'),
(2, 'Processing', 699.99, 'PayPal', '456 Oak St, Springfield, IL, 62704'),
(3, 'Delivered', 149.98, 'Credit Card', '789 Pine St, Springfield, IL, 62704'),
(4, 'Cancelled', 129.99, 'Credit Card', '321 Birch St, Springfield, IL, 62704'),
(5, 'Delivered', 44.98, 'Debit Card', '654 Cedar St, Springfield, IL, 62704');

-- Insert Mock Data into OrderItems
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price)
VALUES 
(1, 1, 1, 999.99), 
(1, 3, 1, 199.99),
(2, 2, 1, 699.99),
(3, 4, 1, 49.99), 
(3, 3, 1, 99.99),
(4, 5, 1, 129.99),
(5, 6, 1, 19.99),
(5, 7, 1, 24.99);
