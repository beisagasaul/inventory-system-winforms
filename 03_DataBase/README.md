# 🗄️ Database Design - Sales & Inventory System  


---

# 🇺🇸 English Version

## 🧠 Overview

This database was designed for a Sales and Inventory Management System developed in C# Windows Forms with SQL Server.

The system manages products, sales, purchases, customers, suppliers, employees, and users with role-based access control.

It follows a relational model with normalization principles to ensure data integrity and scalability.

---

## 🏗️ Database Architecture

The database is structured using a **relational model** and divided into:

- Master Data (Products, Customers, Suppliers, Employees)
- Transactional Data (Sales, Purchases)
- System Data (Users, Roles, Stock Movements)

---

## 📊 Main Tables

### 📦 Master Data
- Product
- UnitOfMeasure
- Customer
- Supplier
- Employee

### 💰 Transactions
- Sale
- SaleDetail
- Purchase
- PurchaseDetail

### 🔐 Security
- UserAccount
- Role
- UserRole

### 📦 Inventory Control
- StockMovement

---

## 🔗 Relationships

- Product → UnitOfMeasure (Many-to-One)
- Sale → SaleDetail (One-to-Many)
- Purchase → PurchaseDetail (One-to-Many)
- UserAccount → Employee (One-to-One)
- UserAccount → Role (Many-to-Many via UserRole)
- Product → StockMovement (One-to-Many)

---

## ⚙️ Business Rules

- A sale cannot be completed without available stock.
- Every purchase increases product stock.
- Every sale decreases product stock.
- Only active users can access the system.
- Each user has one or more roles defining permissions.

---

## 🔐 Security Design

The system uses role-based access control (RBAC):

- Administrator: Full system access
- Seller: Limited access (sales and inventory consultation)

Passwords are stored in hashed format for security.

---

## 📈 Design Decisions

- Separation of Sale and SaleDetail improves scalability and normalization.
- StockMovement table was added to track inventory history.
- Role-based access allows flexible permission management.
- Audit fields (createdBy, createdAt, status) ensure traceability.

---

## 📌 Summary

This database provides a structured, scalable, and normalized design suitable for a real-world POS system, ensuring data integrity and maintainability.

---

# 🇪🇸 Versión en Español

# 🗄️ Diseño de Base de Datos - Sistema de Ventas e Inventario

## 🧠 Descripción General

Esta base de datos fue diseñada para un Sistema de Ventas e Inventario desarrollado en C# Windows Forms con SQL Server.

El sistema gestiona productos, ventas, compras, clientes, proveedores, empleados y usuarios con control de acceso basado en roles.

Sigue un modelo relacional con principios de normalización para garantizar integridad de datos y escalabilidad.

---

## 🏗️ Arquitectura de la Base de Datos

La base de datos está estructurada bajo un **modelo relacional** y dividida en:

- Datos Maestros (Productos, Clientes, Proveedores, Empleados)
- Datos Transaccionales (Ventas, Compras)
- Datos del Sistema (Usuarios, Roles, Movimientos de Stock)

---

## 📊 Tablas Principales

### 📦 Datos Maestros
- Product
- UnitOfMeasure
- Customer
- Supplier
- Employee

### 💰 Transacciones
- Sale
- SaleDetail
- Purchase
- PurchaseDetail

### 🔐 Seguridad
- UserAccount
- Role
- UserRole

### 📦 Control de Inventario
- StockMovement

---

## 🔗 Relaciones

- Product → UnitOfMeasure (Muchos a Uno)
- Sale → SaleDetail (Uno a Muchos)
- Purchase → PurchaseDetail (Uno a Muchos)
- UserAccount → Employee (Uno a Uno)
- UserAccount → Role (Muchos a Muchos mediante UserRole)
- Product → StockMovement (Uno a Muchos)

---

## ⚙️ Reglas de Negocio

- No se puede realizar una venta sin stock disponible.
- Cada compra incrementa el stock de productos.
- Cada venta reduce el stock de productos.
- Solo usuarios activos pueden acceder al sistema.
- Cada usuario tiene uno o más roles que definen sus permisos.

---

## 🔐 Diseño de Seguridad

El sistema utiliza control de acceso basado en roles (RBAC):

- Administrador: acceso total al sistema
- Vendedor: acceso limitado (ventas y consulta de inventario)

Las contraseñas se almacenan en formato hash por seguridad.

---

## 📈 Decisiones de Diseño

- Separar Sale y SaleDetail mejora la normalización y escalabilidad.
- Se agregó StockMovement para historial de inventario.
- El sistema de roles permite flexibilidad en permisos.
- Campos de auditoría (createdBy, createdAt, status) permiten trazabilidad.

---

## 📌 Resumen

Esta base de datos proporciona un diseño estructurado, escalable y normalizado, adecuado para un sistema POS real, garantizando integridad y mantenibilidad de los datos.