CREATE DATABASE inventory_db
GO

USE inventory_db
GO

CREATE LOGIN inventory_user WITH PASSWORD = 'Str0ng@Pass2026',
DEFAULT_DATABASE = inventory_db,
CHECK_POLICY = ON,
CHECK_EXPIRATION = OFF
GO

CREATE USER inventory_user FOR LOGIN inventory_user;
GO

ALTER ROLE db_datareader ADD MEMBER inventory_user;
ALTER ROLE db_datawriter ADD MEMBER inventory_user;
GO


-- TABLE: UNIT OF MEASURE
CREATE TABLE UnitOfMeasure (
  id INT IDENTITY(1,1) PRIMARY KEY,  -- id
  description VARCHAR(20) NOT NULL,   -- unidadMedida 
  createdBy VARCHAR(50) NOT NULL,     -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1       -- estado  
);

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

-- TABLE: ROLE 
CREATE TABLE Role (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id
  name VARCHAR(50) NOT NULL UNIQUE,          -- nombreRol
  createdBy VARCHAR(50) NOT NULL,            -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1              -- estado
);

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