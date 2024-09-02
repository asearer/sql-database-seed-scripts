-- Create Servers Table
CREATE TABLE Servers (
    ServerID INT PRIMARY KEY AUTO_INCREMENT,
    ServerName VARCHAR(100),
    Location VARCHAR(100),
    IPAddress VARCHAR(15)
);

-- Create Metrics Table
CREATE TABLE Metrics (
    MetricID INT PRIMARY KEY AUTO_INCREMENT,
    ServerID INT,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CPUUsage DECIMAL(5, 2),
    MemoryUsage DECIMAL(5, 2),
    DiskIO DECIMAL(5, 2),
    FOREIGN KEY (ServerID) REFERENCES Servers(ServerID)
);

-- Insert Mock Data into Servers
INSERT INTO Servers (ServerName, Location, IPAddress)
VALUES 
('Server_A', 'Data Center 1', '192.168.1.10'),
('Server_B', 'Data Center 1', '192.168.1.11'),
('Server_C', 'Data Center 2', '192.168.2.10'),
('Server_D', 'Data Center 2', '192.168.2.11');

-- Insert Mock Data into Metrics
INSERT INTO Metrics (ServerID, Timestamp, CPUUsage, MemoryUsage, DiskIO)
VALUES 
-- Metrics for Server_A
(1, '2024-09-01 00:00:00', 75.5, 65.3, 120.4),
(1, '2024-09-01 01:00:00', 70.2, 64.8, 115.6),
(1, '2024-09-01 02:00:00', 68.3, 63.1, 113.2),
(1, '2024-09-01 03:00:00', 72.4, 66.5, 117.9),
(1, '2024-09-01 04:00:00', 69.0, 63.9, 112.0),

-- Metrics for Server_B
(2, '2024-09-01 00:00:00', 65.4, 70.1, 110.3),
(2, '2024-09-01 01:00:00', 68.7, 72.0, 114.7),
(2, '2024-09-01 02:00:00', 67.8, 71.5, 112.8),
(2, '2024-09-01 03:00:00', 66.2, 69.3, 111.5),
(2, '2024-09-01 04:00:00', 64.9, 68.4, 109.7),

-- Metrics for Server_C
(3, '2024-09-01 00:00:00', 80.0, 60.5, 130.8),
(3, '2024-09-01 01:00:00', 78.9, 62.1, 128.9),
(3, '2024-09-01 02:00:00', 76.4, 61.2, 127.5),
(3, '2024-09-01 03:00:00', 74.3, 60.0, 125.2),
(3, '2024-09-01 04:00:00', 73.1, 59.5, 123.9),

-- Metrics for Server_D
(4, '2024-09-01 00:00:00', 72.0, 68.0, 122.0),
(4, '2024-09-01 01:00:00', 70.5, 66.4, 119.7),
(4, '2024-09-01 02:00:00', 69.8, 65.9, 118.4),
(4, '2024-09-01 03:00:00', 71.1, 67.2, 121.1),
(4, '2024-09-01 04:00:00', 69.2, 66.0, 117.3);
