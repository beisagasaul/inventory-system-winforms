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

-- Tabla de unidades de medida

CREATE TABLE UnitOfMeasure (
  id INT IDENTITY(1,1) PRIMARY KEY,  -- id
  description VARCHAR(20) NOT NULL,   -- unidadMedida 
  createdBy VARCHAR(50) NOT NULL,     -- usuarioRegistró
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), --fechaRegistro
  status INT NOT NULL DEFAULT 1       -- estado  
  );
-- TABLA PRODUCTO

CREATE TABLE Product (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id
  unitOfMeasureId INT NOT NULL,              -- idUnidadMedida 

  code VARCHAR(30) NOT NULL UNIQUE,          -- codigo 
  description VARCHAR(200) NOT NULL,         -- descripcion 

  stock DECIMAL(10,2) NOT NULL,              -- saldo 
  salePrice DECIMAL(10,2) NOT NULL CHECK (salePrice > 0),  -- precioVenta 

  createdBy VARCHAR(50) NOT NULL,            -- usuarioRegistro 
  createdAt DATETIME NOT NULL DEFAULT GETDATE(),  -- fechaRegistro
  status INT NOT NULL DEFAULT 1,             -- estado 

  CONSTRAINT fk_Product_UnitOfMeasure --fk_Producto_UnidadMedida
  FOREIGN KEY (unitOfMeasureId) REFERENCES UnitOfMeasure(id)  --idUnidadMedida  referencia a UnidadMedida(id)
);

-- TABLA PROVEEDOR

CREATE TABLE Supplier (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id

  nit BIGINT NOT NULL,                       -- nit
  businessName VARCHAR(100) NOT NULL UNIQUE, -- razonSocial
  address VARCHAR(250) NULL,                 -- direccion
  phone BIGINT NULL,                         -- celular
  representative VARCHAR(50) NOT NULL,      -- representante

  createdBy VARCHAR(50) NOT NULL,           -- usuarioRegistro
  createdAt DATETIME NOT NULL DEFAULT GETDATE(),  -- fechaRegistro
  status INT NOT NULL DEFAULT 1             -- estado
);

-- TABLA EMPLEADO

CREATE TABLE Employee (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id

  identityCard VARCHAR(12) NOT NULL UNIQUE,  -- cedulaIdentidad
  firstName VARCHAR(50) NOT NULL,            -- nombres
  lastName VARCHAR(50) NULL,                 -- primerApellido
  secondLastName VARCHAR(50) NULL,           -- segundoApellido

  birthDate DATE NOT NULL,                   -- fechaNacimiento
  address VARCHAR(250) NOT NULL,             -- direccion
  phone BIGINT NOT NULL,                     -- celular
  position VARCHAR(50) NOT NULL,            -- cargo

  createdBy VARCHAR(50) NOT NULL,           -- usuarioRegistro
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1             -- estado
);
-- TABLA USUARIO

CREATE TABLE UserAccount (
  id INT IDENTITY(1,1) PRIMARY KEY,          -- id
  employeeId INT NOT NULL,                   -- idEmpleado

  username VARCHAR(15) NOT NULL UNIQUE,      -- usuario
  password VARCHAR(250) NOT NULL,            -- clave

  createdBy VARCHAR(50) NOT NULL,            -- usuarioRegistro
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,             -- estado

  CONSTRAINT fk_UserAccount_Employee         -- fk_Usuario_Empleado
  FOREIGN KEY (employeeId) REFERENCES Employee(id)  -- idEmpleado referencia a Employee(id)
);

-- TABLA CLIENTE (OPCIONAL)

CREATE TABLE Customer (
  id INT IDENTITY(1,1) PRIMARY KEY,      -- id

  fullName VARCHAR(100) NOT NULL,        -- nombres
  document VARCHAR(20) NULL,             -- documento

  createdBy VARCHAR(50) NOT NULL,        -- usuarioRegistro
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1          -- estado
);

-- TABLA COMPRA

CREATE TABLE Purchase (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,     -- id
  supplierId INT NOT NULL,                -- idProveedor

  transactionNumber INT NOT NULL,         -- transaccion
  date DATETIME NOT NULL DEFAULT GETDATE(), -- fecha

  total DECIMAL(10,2) NOT NULL CHECK (total > 0), -- total

  createdBy VARCHAR(50) NOT NULL,         -- usuarioRegistro
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,          -- estado

  CONSTRAINT fk_Purchase_Supplier        -- fk_Compra_Proveedor
  FOREIGN KEY (supplierId) REFERENCES Supplier(id) -- idProveedor referencia a Proveedor(id)
);
-- TABLA COMPRA DETALLE

CREATE TABLE PurchaseDetail (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,   -- id
  purchaseId BIGINT NOT NULL,           -- idCompra
  productId INT NOT NULL,               -- idProducto

  quantity DECIMAL(10,2) NOT NULL CHECK (quantity > 0), -- cantidad
  unitPrice DECIMAL(10,2) NOT NULL CHECK (unitPrice > 0), -- precioUnitario

  createdBy VARCHAR(50) NOT NULL,       -- usuarioRegistro
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,        -- estado

  CONSTRAINT fk_PurchaseDetail_Purchase
  FOREIGN KEY (purchaseId) REFERENCES Purchase(id), -- idCompra referencia a Compra(id)

  CONSTRAINT fk_PurchaseDetail_Product
  FOREIGN KEY (productId) REFERENCES Product(id) -- idProducto referencia a Producto(id)
);
-- TABLA VENTA

CREATE TABLE Sale (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,   -- id

  customerId INT NULL,                  -- idCliente
  userId INT NOT NULL,                  -- idUsuario

  date DATETIME NOT NULL DEFAULT GETDATE(), -- fecha
  total DECIMAL(10,2) NOT NULL CHECK (total > 0), -- total

  createdBy VARCHAR(50) NOT NULL,      -- usuarioRegistro
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,       -- estado

  CONSTRAINT fk_Sale_Customer
  FOREIGN KEY (customerId) REFERENCES Customer(id), -- idCliente referencia a Cliente(id)

  CONSTRAINT fk_Sale_User
  FOREIGN KEY (userId) REFERENCES UserAccount(id) -- idUsuario referencia a Usuario(id)
);

-- TABLA VENTA DETALLE

CREATE TABLE SaleDetail (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,   -- id
  saleId BIGINT NOT NULL,               -- idVenta
  productId INT NOT NULL,               -- idProducto

  quantity DECIMAL(10,2) NOT NULL CHECK (quantity > 0), -- cantidad
  unitPrice DECIMAL(10,2) NOT NULL CHECK (unitPrice > 0), -- precioUnitario

  createdBy VARCHAR(50) NOT NULL,       -- usuarioRegistro
  createdAt DATETIME NOT NULL DEFAULT GETDATE(), -- fechaRegistro
  status INT NOT NULL DEFAULT 1,        -- estado

  CONSTRAINT fk_SaleDetail_Sale
  FOREIGN KEY (saleId) REFERENCES Sale(id), -- idVenta referencia a Venta(id)

  CONSTRAINT fk_SaleDetail_Product
  FOREIGN KEY (productId) REFERENCES Product(id) -- idProducto referencia a Producto(id)
)

--INSERCIÓN DE DATOS DE PRUEBA

--unidades de medida
INSERT INTO UnitOfMeasure (description, createdBy)
VALUES 
('Unidad', 'admin'),
('Caja', 'admin'),
('Paquete', 'admin'),
('Docena', 'admin'),
('Kg', 'admin');
select * from UnitOfMeasure;

--prveedores
INSERT INTO Supplier (nit, businessName, address, phone, representative, createdBy)
VALUES 
(123456, 'Distribuidora Escolar SA', 'Av. Central 123', 71234567, 'Juan Perez', 'admin'),
(234567, 'Papeleria El Estudiante', 'Calle Norte 45', 72345678, 'Maria Lopez', 'admin'),
(345678, 'Libreria Global', 'Zona Sur 88', 73456789, 'Carlos Ruiz', 'admin'),
(456789, 'Distribuciones ABC', 'Av. Libertad 10', 74567890, 'Ana Torres', 'admin'),
(567890, 'Importadora Libros SA', 'Calle Comercio 22', 75678901, 'Luis Gomez', 'admin');
select * from Supplier;

--empleados
INSERT INTO Employee (identityCard, firstName, lastName, secondLastName, birthDate, address, phone, position, createdBy)
VALUES
('1234567', 'Luis', 'Perez', 'Gomez', '1995-05-10', 'Zona Central', 70011111, 'Cajero', 'admin'),
('2345678', 'Maria', 'Lopez', 'Diaz', '1998-02-20', 'Zona Norte', 70022222, 'Vendedora', 'admin'),
('3456789', 'Carlos', 'Ruiz', 'Sosa', '1992-08-15', 'Zona Sur', 70033333, 'Administrador', 'admin'),
('4567890', 'Ana', 'Torres', 'Mendez', '1997-11-05', 'Zona Este', 70044444, 'Vendedora', 'admin'),
('5678901', 'Pedro', 'Gomez', 'Rojas', '1994-03-12', 'Zona Oeste', 70055555, 'Bodeguero', 'admin');

--usuarios
INSERT INTO UserAccount (employeeId, username, password, createdBy)
VALUES
(1, 'luisp', '123', 'admin'),
(2, 'mlopez', '123', 'admin'),
(3, 'cruiz', '123', 'admin'),
(4, 'atorres', '123', 'admin'),
(5, 'pgomez', '123', 'admin');


--productos
INSERT INTO Product (unitOfMeasureId, code, description, stock, salePrice, createdBy)
VALUES
(1, 'LIB001', 'Cuaderno universitario', 100, 5.50, 'admin'),
(1, 'LIB002', 'Lapicero azul', 200, 1.20, 'admin'),
(1, 'LIB003', 'Borrador blanco', 150, 0.80, 'admin'),
(1, 'LIB004', 'Regla 30cm', 80, 2.50, 'admin'),
(1, 'LIB005', 'Resaltador amarillo', 120, 1.80, 'admin');

--clientes
INSERT INTO Customer (fullName, document, createdBy)
VALUES
('Juan Perez', '12345678', 'admin'),
('Maria Lopez', '23456789', 'admin'),
('Carlos Diaz', '34567890', 'admin'),
('Ana Torres', '45678901', 'admin'),
('Luis Gomez', '56789012', 'admin');

--compras
INSERT INTO Purchase (supplierId, transactionNumber, total, createdBy)
VALUES
(1, 1001, 50.00, 'admin'),
(2, 1002, 75.00, 'admin'),
(3, 1003, 120.00, 'admin'),
(4, 1004, 60.00, 'admin'),
(5, 1005, 90.00, 'admin');

--detalle compras
INSERT INTO PurchaseDetail (purchaseId, productId, quantity, unitPrice, createdBy)
VALUES
(1, 1, 10, 5.00, 'admin'),
(2, 2, 20, 1.00, 'admin'),
(3, 3, 30, 0.70, 'admin'),
(4, 4, 15, 2.00, 'admin'),
(5, 5, 25, 1.50, 'admin');


INSERT INTO Sale (customerId, userId, total, createdBy)
VALUES
(1, 1, 10.00, 'admin'),
(2, 2, 15.00, 'admin'),
(3, 3, 20.00, 'admin'),
(4, 4, 25.00, 'admin'),
(5, 5, 30.00, 'admin');

--detalle ventas
INSERT INTO SaleDetail (saleId, productId, quantity, unitPrice, createdBy)
VALUES
(1, 1, 2, 5.00, 'admin'),
(2, 2, 5, 3.00, 'admin'),
(3, 3, 10, 2.00, 'admin'),
(4, 4, 5, 5.00, 'admin'),
(5, 5, 6, 5.00, 'admin');