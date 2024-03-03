CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10,2),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Departments (DepartmentID, DepartmentName, Location) VALUES
(1, 'HR', 'New York'),
(2, 'Marketing', 'Los Angeles'),
(3, 'Finance', 'Chicago');

INSERT INTO Employees (EmployeeID, Name, Position, Salary, DepartmentID) VALUES
(1, 'Alice', 'Manager', 60000.00, 1),
(2, 'Bob', 'Developer', 55000.00, 2),
(3, 'Charlie', 'Analyst', 50000.00, 3),
(4, 'David', 'Coordinator', 45000.00, 1);
