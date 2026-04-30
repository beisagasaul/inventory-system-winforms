CREATE DATABASE INVENTORYDB;
GO
USE master
GO
CREATE LOGIN usrinventory WITH PASSWORD = '123456',
  DEFAULT_DATABASE = Inventorydb,
  CHECK_EXPIRATION = OFF,
  CHECK_POLICY = ON

  go 
  USE Inventorydb
  go
GO
CREATE USER usrinventory FOR LOGIN usrinventory
GO
ALTER ROLE db_owner ADD MEMBER usrinventory
GO


-- TABLE: UNIT OF MEASURE
CREATE TABLE UnitOfMeasure (
  id INT IDENTITY(1,1) PRIMARY KEY,  -- id
  description VARCHAR(20) NOT NULL,   -- unidadMedida 
  createdBy VARCHAR(50) NOT NULL,     -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1       -- estado  
);

select * from UnitOfMeasure
-- TABLE: PRODUCT
CREATE TABLE Product (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id
  unitOfMeasureId INT NOT NULL,              -- idUnidadMedida 

  code VARCHAR(30) NOT NULL UNIQUE,          -- codigo 
  description VARCHAR(200) NOT NULL,         -- descripcion 

  stock DECIMAL(10,2) NOT NULL DEFAULT 0,    -- saldo 
  salePrice DECIMAL(10,2) NOT NULL CHECK (salePrice > 0),  -- precioVenta 

  createdBy VARCHAR(50) NOT NULL,            -- usuarioRegistró 
  createdAt DATETIME NOT NULL DEFAULT GETDATE(),  -- fechaRegistro
  status INT NOT NULL DEFAULT 1,             -- estado 

  CONSTRAINT fk_Product_UnitOfMeasure 
  FOREIGN KEY (unitOfMeasureId) REFERENCES UnitOfMeasure(id)
);
select * from Product
-- TABLE: SUPPLIER -PROVEEDOR
CREATE TABLE Supplier (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id

  nit BIGINT NOT NULL,                       -- nit
  businessName VARCHAR(100) NOT NULL UNIQUE, -- razonSocial
  address VARCHAR(250),                      -- direccion
  phone BIGINT,                              -- celular
  representative VARCHAR(50) NOT NULL,       -- representante

  createdBy VARCHAR(50) NOT NULL,           -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(),  -- fechaRegistro
  status INT NOT NULL DEFAULT 1             -- estado
);

select * from Supplier

-- TABLE: EMPLOYEE
CREATE TABLE Employee (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id

  identityCard VARCHAR(12) NOT NULL UNIQUE,  -- cedulaIdentidad
  firstName VARCHAR(50) NOT NULL,            -- nombres
  lastName VARCHAR(50),                      -- primerApellido
  secondLastName VARCHAR(50),                -- segundoApellido

  birthDate DATE NOT NULL,                   -- fechaNacimiento
  address VARCHAR(250),                      -- direccion
  phone BIGINT,                              -- celular
  position VARCHAR(50) NOT NULL,             -- cargo

  createdBy VARCHAR(50) NOT NULL,           -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1             -- estado
);

select *from Employee


-- TABLE: USER ACCOUNT
CREATE TABLE UserAccount (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id
  employeeId INT NOT NULL,                   -- idEmpleado

  username VARCHAR(15) NOT NULL UNIQUE,      -- usuario
  password VARCHAR(250) NOT NULL,            -- contraseña (hash)

  createdBy VARCHAR(50) NOT NULL,            -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,             -- estado

  CONSTRAINT fk_UserAccount_Employee
  FOREIGN KEY (employeeId) REFERENCES Employee(id)
);


select *from UserAccount

-- TABLE: ROLE 
CREATE TABLE Role (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id
  name VARCHAR(50) NOT NULL UNIQUE,          -- nombreRol
  createdBy VARCHAR(50) NOT NULL,            -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1              -- estado
);
use INVENTORYDB
select * from role

-- TABLE: USER ROLE (NUEVO)
CREATE TABLE UserRole (
  userId INT NOT NULL,                       -- idUsuario
  roleId INT NOT NULL,                       -- idRol

  PRIMARY KEY (userId, roleId),

  FOREIGN KEY (userId) REFERENCES UserAccount(id),
  FOREIGN KEY (roleId) REFERENCES Role(id)
);

-- TABLE: CUSTOMER -CLIENTE
CREATE TABLE Customer (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id

  fullName VARCHAR(100) NOT NULL,            -- nombres
  document VARCHAR(20),                      -- documento

  createdBy VARCHAR(50) NOT NULL,           -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1             -- estado
);



-- TABLE: PURCHASE --COMPRA
CREATE TABLE Purchase (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,       -- id
  supplierId INT NOT NULL,                  -- idProveedor

  transactionNumber INT NOT NULL,           -- numeroTransaccion
  date DATETIME NOT NULL DEFAULT GETDATE(), -- fecha

  total DECIMAL(10,2) NOT NULL CHECK (total > 0), -- total

  createdBy VARCHAR(50) NOT NULL,          -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,           -- estado

  FOREIGN KEY (supplierId) REFERENCES Supplier(id)
);


-- TABLE: PURCHASE DETAIL
CREATE TABLE PurchaseDetail (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,     -- id
  purchaseId BIGINT NOT NULL,             -- idCompra
  productId INT NOT NULL,                 -- idProducto

  quantity DECIMAL(10,2) NOT NULL CHECK (quantity > 0), -- cantidad
  unitPrice DECIMAL(10,2) NOT NULL CHECK (unitPrice > 0), -- precioUnitario

  createdBy VARCHAR(50) NOT NULL,        -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,         -- estado

  FOREIGN KEY (purchaseId) REFERENCES Purchase(id),
  FOREIGN KEY (productId) REFERENCES Product(id)
);


-- TABLE: SALE
CREATE TABLE Sale (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,     -- id

  customerId INT NULL,                    -- idCliente
  userId INT NOT NULL,                    -- idUsuario

  date DATETIME NOT NULL DEFAULT GETDATE(), -- fecha
  total DECIMAL(10,2) NOT NULL CHECK (total > 0), -- total

  createdBy VARCHAR(50) NOT NULL,        -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,         -- estado

  FOREIGN KEY (customerId) REFERENCES Customer(id),
  FOREIGN KEY (userId) REFERENCES UserAccount(id)
);

-- TABLE: SALE DETAIL
CREATE TABLE SaleDetail (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,    -- id
  saleId BIGINT NOT NULL,                -- idVenta
  productId INT NOT NULL,                -- idProducto

  quantity DECIMAL(10,2) NOT NULL CHECK (quantity > 0), -- cantidad
  unitPrice DECIMAL(10,2) NOT NULL CHECK (unitPrice > 0), -- precioUnitario

  createdBy VARCHAR(50) NOT NULL,       -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,        -- estado

  FOREIGN KEY (saleId) REFERENCES Sale(id),
  FOREIGN KEY (productId) REFERENCES Product(id)
);


-- TABLE: STOCK MOVEMENT (IMPORTANTE)
CREATE TABLE StockMovement (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,   -- id
  productId INT NOT NULL,               -- idProducto

  movementType VARCHAR(10) NOT NULL,    -- tipoMovimiento (IN/OUT)
  quantity DECIMAL(10,2) NOT NULL,      -- cantidad

  reference VARCHAR(50),                -- referencia
  date DATETIME NOT NULL DEFAULT GETDATE(), -- fecha

  createdBy VARCHAR(50) NOT NULL,       -- usuarioRegistró

  FOREIGN KEY (productId) REFERENCES Product(id)
);


DROP PROC IF EXISTS sp_ProductSearch;
GO

CREATE PROC sp_ProductSearch 
    @parametro VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        p.id,
        p.unitOfMeasureId,
        p.code,
        p.description,
        um.description AS unitOfMeasure,
        p.stock,
        p.salePrice,
        p.createdBy,
        p.createdAt,
        p.status
    FROM Product p
    INNER JOIN UnitOfMeasure um 
        ON um.id = p.unitOfMeasureId
    WHERE p.status = 1
      AND (
            p.code LIKE '%' + @parametro + '%'
         OR p.description LIKE '%' + @parametro + '%'
         OR um.description LIKE '%' + @parametro + '%'
      )
    ORDER BY p.description;
END;
GO

use INVENTORYDB
EXEC sp_ProductSearch 'cuaderno';
---Custom
DROP PROC IF EXISTS sp_CustomerSearch;
GO

CREATE PROC sp_CustomerSearch
    @parametro VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.id,
        c.fullName,
        c.document,
        c.createdBy,
        c.createdAt,
        c.status
    FROM Customer c
    WHERE c.status = 1
      AND (
            c.fullName LIKE '%' + @parametro + '%'
         OR c.document LIKE '%' + @parametro + '%'
      )
    ORDER BY c.fullName;
END;
GO
select * from Customer
exec sp_CustomerSearch 'ci003'

--supplier
DROP PROC IF EXISTS sp_SupplierSearch;
GO

CREATE PROC sp_SupplierSearch
    @parametro VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        s.id,
        s.nit,
        s.businessName,
        s.address,
        s.phone,
        s.representative,
        s.createdBy,
        s.createdAt,
        s.status
    FROM Supplier s
    WHERE s.status = 1
      AND (
            s.businessName LIKE '%' + @parametro + '%'
         OR CAST(s.nit AS VARCHAR) LIKE '%' + @parametro + '%'
         OR s.representative LIKE '%' + @parametro + '%'
      )
    ORDER BY s.businessName;
END;
GO

--USER ACCOUNT
DROP PROC IF EXISTS sp_UserAccountSearch;
GO

CREATE PROC sp_UserAccountSearch
    @parametro VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        u.id,
        u.username,
        e.firstName + ' ' + e.lastName AS fullName,
        e.identityCard,
        u.status,
        u.createdAt
    FROM UserAccount u
    INNER JOIN Employee e 
        ON e.id = u.employeeId
    WHERE u.status = 1
      AND (
            u.username LIKE '%' + @parametro + '%'
         OR e.firstName LIKE '%' + @parametro + '%'
         OR e.lastName LIKE '%' + @parametro + '%'
         OR e.identityCard LIKE '%' + @parametro + '%'
      )
    ORDER BY u.username;
END;
GO