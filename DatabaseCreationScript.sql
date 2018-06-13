CREATE TABLE WarehouseList (
  WarehouseID INT IDENTITY(1,1) PRIMARY KEY,
  City VARCHAR(50),
  Addres VARCHAR(50),
  Capacity INT
);

CREATE TABLE Categories (
  CategoryID INT IDENTITY(1,1) PRIMARY KEY,
  CategoryName VARCHAR(50)
);
CREATE TABLE ProductDescription(
  DescriptionID INT IDENTITY(1,1) PRIMARY KEY,
  Color VARCHAR(50),
  Specification VARCHAR(256),
  WheelDiameter int,
  FrameSize int,
  
);

CREATE TABLE PermissionList(
  PermissionID INT IDENTITY(1,1) PRIMARY KEY,
  PermissionType VARCHAR(50)
);

CREATE TABLE ProductList (
  ProductID INT IDENTITY(1,1) PRIMARY KEY,
  ProductName VARCHAR(50),
  CategoryID INT references Categories(CategoryID),
  DescriptionID INT references ProductDescription(DescriptionID)
  
);



CREATE TABLE ProductStorage(
  ID INT IDENTITY(1,1) PRIMARY KEY,
  ProductID INT references ProductList(ProductID),
  WarehouseID INT references WarehouseList(WarehouseID),
  Quantity INT
);  


CREATE TABLE Users(
  UserID INT IDENTITY(1,1) PRIMARY KEY,  
  Username VARCHAR(50),
  PW VARCHAR(50),
  PermissionID INT references PermissionList(PermissionID)
);



CREATE TABLE UsersData(
    UserID INT references Users(UserID),
    Firstname VARCHAR(50),        
    Surename VARCHAR(50),
    Adres VARCHAR(100),
    DateOfBirth date,
    Gender VARCHAR(50),
    Salary bigint,
    EmployemntDate date
);