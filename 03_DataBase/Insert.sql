use inventorydb

select * from UnitOfMeasure

INSERT INTO UnitOfMeasure (description, createdBy) VALUES ('Unidad', 'admin');
INSERT INTO UnitOfMeasure (description, createdBy) VALUES ('Docena', 'admin');
INSERT INTO UnitOfMeasure (description, createdBy) VALUES ('Caja', 'admin');




select * from Product
INSERT INTO Product (unitOfMeasureId, code, description, stock, salePrice, createdBy)
VALUES (1, 'P001', 'Cuaderno universitario', 50, 10.00, 'admin');

INSERT INTO Product (unitOfMeasureId, code, description, stock, salePrice, createdBy)
VALUES (2, 'P002', 'Lápices por docena', 30, 5.00, 'admin');

INSERT INTO Product (unitOfMeasureId, code, description, stock, salePrice, createdBy)
VALUES (3, 'P003', 'Caja de bolígrafos', 20, 15.00, 'admin');


select * from Supplier
INSERT INTO Supplier (nit, businessName, address, phone, representative, createdBy)
VALUES (123456789, 'Papelería Central SRL', 'Av. Central 123', 70011111, 'Juan Pérez', 'admin');

INSERT INTO Supplier (nit, businessName, address, phone, representative, createdBy)
VALUES (987654321, 'Distribuidora Escolar SA', 'Calle Norte 456', 70022222, 'María López', 'admin');

INSERT INTO Supplier (nit, businessName, address, phone, representative, createdBy)
VALUES (456123789, 'Libros y Más', 'Zona Sur 789', 70033333, 'Carlos Díaz', 'admin');



select * from Employee

INSERT INTO Employee (identityCard, firstName, lastName, secondLastName, birthDate, address, phone, position, createdBy)
VALUES ('1234567', 'Luis', 'García', 'Mendoza', '1990-05-10', 'Calle A 123', 60011111, 'Administrador', 'admin');

INSERT INTO Employee (identityCard, firstName, lastName, secondLastName, birthDate, address, phone, position, createdBy)
VALUES ('2345678', 'Ana', 'Rojas', 'Vega', '1992-08-15', 'Calle B 456', 60022222, 'Vendedor', 'admin');

INSERT INTO Employee (identityCard, firstName, lastName, secondLastName, birthDate, address, phone, position, createdBy)
VALUES ('3456789', 'Pedro', 'Lopez', 'Suarez', '1995-12-20', 'Calle C 789', 60033333, 'Cajero', 'admin');


select * from UserAccount
INSERT INTO UserAccount (employeeId, username, password, createdBy)
VALUES (1, 'lgarcia', 'hash1', 'admin');

INSERT INTO UserAccount (employeeId, username, password, createdBy)
VALUES (2, 'arojas', 'hash2', 'admin');

INSERT INTO UserAccount (employeeId, username, password, createdBy)
VALUES (3, 'plopez', 'hash3', 'admin');


select * from Role
INSERT INTO Role (name, createdBy) VALUES ('ADMIN', 'admin');
INSERT INTO Role (name, createdBy) VALUES ('VENDEDOR', 'admin');
INSERT INTO Role (name, createdBy) VALUES ('ALMACEN', 'admin');


select * from Customer
INSERT INTO Customer (fullName, document, createdBy)
VALUES ('Cliente Uno', 'CI001', 'admin');

INSERT INTO Customer (fullName, document, createdBy)
VALUES ('Cliente Dos', 'CI002', 'admin');

INSERT INTO Customer (fullName, document, createdBy)
VALUES ('Cliente Tres', 'CI003', 'admin');

select * from Purchase
INSERT INTO Purchase (supplierId, transactionNumber, total, createdBy)
VALUES (1, 1001, 150.00, 'admin');

INSERT INTO Purchase (supplierId, transactionNumber, total, createdBy)
VALUES (2, 1002, 200.00, 'admin');

INSERT INTO Purchase (supplierId, transactionNumber, total, createdBy)
VALUES (3, 1003, 300.00, 'admin');



select * from PurchaseDetail
INSERT INTO PurchaseDetail (purchaseId, productId, quantity, unitPrice, createdBy)
VALUES (1, 1, 10, 10.00, 'admin');

INSERT INTO PurchaseDetail (purchaseId, productId, quantity, unitPrice, createdBy)
VALUES (2, 2, 20, 5.00, 'admin');

INSERT INTO PurchaseDetail (purchaseId, productId, quantity, unitPrice, createdBy)
VALUES (3, 3, 15, 15.00, 'admin');

select * from Sale
INSERT INTO Sale (customerId, userId, total, createdBy)
VALUES (1, 1, 50.00, 'admin');

INSERT INTO Sale (customerId, userId, total, createdBy)
VALUES (2, 2, 75.00, 'admin');

INSERT INTO Sale (customerId, userId, total, createdBy)
VALUES (3, 3, 100.00, 'admin');


select * from SaleDetail
INSERT INTO SaleDetail (saleId, productId, quantity, unitPrice, createdBy)
VALUES (1, 1, 5, 10.00, 'admin');

INSERT INTO SaleDetail (saleId, productId, quantity, unitPrice, createdBy)
VALUES (2, 2, 10, 5.00, 'admin');

INSERT INTO SaleDetail (saleId, productId, quantity, unitPrice, createdBy)
VALUES (3, 3, 5, 15.00, 'admin');

select * from StockMovement
INSERT INTO StockMovement (productId, movementType, quantity, reference, createdBy)
VALUES (1, 'IN', 50, 'COMPRA1', 'admin');

INSERT INTO StockMovement (productId, movementType, quantity, reference, createdBy)
VALUES (2, 'OUT', 10, 'VENTA1', 'admin');

INSERT INTO StockMovement (productId, movementType, quantity, reference, createdBy)
VALUES (3, 'IN', 30, 'COMPRA2', 'admin');