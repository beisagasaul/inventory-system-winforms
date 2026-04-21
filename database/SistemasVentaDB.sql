CREATE DATABASE SistemaVentasDB;

GO
USE SistemaVentasDB
GO



CREATE LOGIN usrmaster WITH PASSWORD = '123456',
  DEFAULT_DATABASE =SistemaVentasDB,
  CHECK_EXPIRATION = OFF,
  CHECK_POLICY = ON
GO

CREATE USER usrmaster FOR LOGIN usrmaster;
GO
ALTER ROLE db_owner ADD MEMBER usrmaster
GO



-- TABLA UNIDAD DE MEDIDA
CREATE TABLE UnidadMedida (
  id INT IDENTITY(1,1) PRIMARY KEY,
  descripcion VARCHAR(20) NOT NULL,

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1
);

-- TABLA PRODUCTO
CREATE TABLE Producto (
  id INT IDENTITY(1,1) PRIMARY KEY,
  idUnidadMedida INT NOT NULL,

  codigo VARCHAR(30) NOT NULL UNIQUE,
  descripcion VARCHAR(200) NOT NULL,

  saldo DECIMAL(10,2) NOT NULL,
  precioVenta DECIMAL(10,2) NOT NULL CHECK (precioVenta > 0),

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1,

  CONSTRAINT fk_Producto_UnidadMedida
  FOREIGN KEY (idUnidadMedida) REFERENCES UnidadMedida(id)
);

-- TABLA PROVEEDOR
CREATE TABLE Proveedor (
  id INT IDENTITY(1,1) PRIMARY KEY,

  nit BIGINT NOT NULL,
  razonSocial VARCHAR(100) NOT NULL UNIQUE,
  direccion VARCHAR(250) NULL,
  celular BIGINT NULL,
  representante VARCHAR(50) NOT NULL,

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1
);

-- TABLA EMPLEADO
CREATE TABLE Empleado (
  id INT IDENTITY(1,1) PRIMARY KEY,

  cedulaIdentidad VARCHAR(12) NOT NULL UNIQUE,
  nombres VARCHAR(50) NOT NULL,
  primerApellido VARCHAR(50) NULL,
  segundoApellido VARCHAR(50) NULL,

  fechaNacimiento DATE NOT NULL,
  direccion VARCHAR(250) NOT NULL,
  celular BIGINT NOT NULL,
  cargo VARCHAR(50) NOT NULL,

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1
);

-- TABLA USUARIO
CREATE TABLE Usuario (
  id INT IDENTITY(1,1) PRIMARY KEY,
  idEmpleado INT NOT NULL,

  usuario VARCHAR(15) NOT NULL UNIQUE,
  clave VARCHAR(250) NOT NULL,

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1,

  CONSTRAINT fk_Usuario_Empleado
  FOREIGN KEY (idEmpleado) REFERENCES Empleado(id)
);

-- TABLA CLIENTE (OPCIONAL)
CREATE TABLE Cliente (
  id INT IDENTITY(1,1) PRIMARY KEY,

  nombres VARCHAR(100) NOT NULL,
  documento VARCHAR(20) NULL,

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1
);

-- TABLA COMPRA
CREATE TABLE Compra (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,
  idProveedor INT NOT NULL,

  transaccion INT NOT NULL,
  fecha DATETIME NOT NULL DEFAULT GETDATE(),

  total DECIMAL(10,2) NOT NULL CHECK (total > 0),

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1,

  CONSTRAINT fk_Compra_Proveedor
  FOREIGN KEY (idProveedor) REFERENCES Proveedor(id)
);

-- TABLA COMPRA DETALLE
CREATE TABLE CompraDetalle (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,
  idCompra BIGINT NOT NULL,
  idProducto INT NOT NULL,

  cantidad DECIMAL(10,2) NOT NULL CHECK (cantidad > 0),
  precioUnitario DECIMAL(10,2) NOT NULL CHECK (precioUnitario > 0),

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1,

  CONSTRAINT fk_CompraDetalle_Compra
  FOREIGN KEY (idCompra) REFERENCES Compra(id),

  CONSTRAINT fk_CompraDetalle_Producto
  FOREIGN KEY (idProducto) REFERENCES Producto(id)
);

-- TABLA VENTA
CREATE TABLE Venta (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,

  idCliente INT NULL,
  idUsuario INT NOT NULL,

  fecha DATETIME NOT NULL DEFAULT GETDATE(),
  total DECIMAL(10,2) NOT NULL CHECK (total > 0),

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1,

  CONSTRAINT fk_Venta_Cliente
  FOREIGN KEY (idCliente) REFERENCES Cliente(id),

  CONSTRAINT fk_Venta_Usuario
  FOREIGN KEY (idUsuario) REFERENCES Usuario(id)
);

-- TABLA VENTA DETALLE
CREATE TABLE VentaDetalle (
  id BIGINT IDENTITY(1,1) PRIMARY KEY,
  idVenta BIGINT NOT NULL,
  idProducto INT NOT NULL,

  cantidad DECIMAL(10,2) NOT NULL CHECK (cantidad > 0),
  precioUnitario DECIMAL(10,2) NOT NULL CHECK (precioUnitario > 0),

  usuarioRegistro VARCHAR(50) NOT NULL,
  fechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
  estado INT NOT NULL DEFAULT 1,

  CONSTRAINT fk_VentaDetalle_Venta
  FOREIGN KEY (idVenta) REFERENCES Venta(id),

  CONSTRAINT fk_VentaDetalle_Producto
  FOREIGN KEY (idProducto) REFERENCES Producto(id)
);