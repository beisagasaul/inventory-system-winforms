# 🇺🇸 English Version

# 🛒 Sales and Inventory System

---

## 🧾 General Description

The Sales and Inventory System is a desktop application developed in C# Windows Forms, designed for managing products, sales, purchases, customers, suppliers, and users.

The system allows efficient control of inventory and business operations, reducing manual errors and improving overall process management.

It uses SQL Server as the database engine and follows a layered architecture:

- UI (User Interface)
- BLL (Business Logic Layer)
- DAL (Data Access Layer)
- Entities (Models)

---

## 🎯 System Objective

### General Objective
To automate sales, purchases, and inventory management in order to improve control and efficiency of business processes.

### Specific Objectives
- Control product inventory in real time
- Register sales and purchase transactions
- Manage users and access control
- Manage customers, employees, and suppliers
- Reduce human errors in manual processes
- Improve decision-making through data control

---

## 📦 System Scope

### ✔ Included:
- Product and inventory management
- Sales and purchase registration
- User and role administration
- Customer, supplier, and employee management
- Basic stock control

### ❌ Not included:
- Electronic invoicing
- Web or e-commerce integration
- Online payments
- Multi-branch support
- Advanced accounting system

---

## 👥 System Actors

- **Administrator:** manages users, products, and overall system configuration  
- **Seller:** performs sales operations and checks product availability  
- **System:** handles automatic stock validation and business processes  

---

## 🧩 System Modules

- Security Module (Login and roles)
- Inventory Module (products and stock control)
- Sales Module (sales registration and details)
- Purchase Module (product entry management)
- People Module (customers, suppliers, employees)

---

## ⚙️ Business Rules

- Sales cannot be performed without available stock
- Each sale automatically decreases inventory
- Each purchase increases product stock
- Authentication is required to access the system
- Only active users are allowed to access the system
- Each sale must contain at least one product

---

## 📊 Functional Scope

The system centralizes business operations management, allowing control of inventory, sales, and purchases, as well as user and business data administration.

---

## 🧠 System Assumptions

- The system runs in a local desktop environment
- SQL Server is installed locally or on an internal network
- No internet connection is required
- Users have predefined roles

---

## 📌 Summary

A business management system designed for small and medium-sized companies, featuring a modular architecture that ensures maintainability, scalability, and clear separation of responsibilities.



-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# 🇪🇸 Versión en Español

# 🛒 Sistema de Ventas e Inventario

---

## 🧾 Descripción General

El Sistema de Ventas e Inventario es una aplicación de escritorio desarrollada en C# Windows Forms, orientada a la gestión de productos, ventas, compras, clientes, proveedores y usuarios.

El sistema permite controlar el inventario y las operaciones comerciales de un negocio, reduciendo errores manuales y mejorando la administración de los procesos.

Utiliza SQL Server como base de datos y está desarrollado bajo una arquitectura en capas:

- UI (Interfaz de usuario)
- BLL (Lógica de negocio)
- DAL (Acceso a datos)
- Entidades (Modelos)

---

## 🎯 Objetivo del Sistema

### Objetivo general
Automatizar la gestión de ventas, compras e inventario para mejorar el control y la eficiencia de los procesos comerciales.

### Objetivos específicos
- Controlar el inventario de productos en tiempo real
- Registrar ventas y compras
- Administrar usuarios y control de acceso
- Gestionar clientes, empleados y proveedores
- Reducir errores en procesos manuales
- Mejorar la toma de decisiones mediante el control de datos

---

## 📦 Alcance del Sistema

### ✔ Incluye:
- Gestión de productos e inventario
- Registro de ventas y compras
- Administración de usuarios y roles
- Gestión de clientes, proveedores y empleados
- Control básico de stock

### ❌ No incluye:
- Facturación electrónica
- Integración con sistemas web o e-commerce
- Pagos en línea
- Multisucursal
- Sistema contable avanzado

---

## 👥 Actores del Sistema

- **Administrador:** gestiona usuarios, productos y el sistema en general  
- **Vendedor:** realiza ventas y consulta productos  
- **Sistema:** ejecuta validaciones de stock y procesos automáticos  

---

## 🧩 Módulos del Sistema

- Módulo de Seguridad (Login y roles)
- Módulo de Inventario (productos y stock)
- Módulo de Ventas (registro y detalle)
- Módulo de Compras (ingreso de productos)
- Módulo de Personas (clientes, proveedores, empleados)

---

## ⚙️ Reglas de Negocio

- No se permite realizar ventas sin stock disponible
- Cada venta descuenta automáticamente el inventario
- Cada compra incrementa el stock de productos
- El acceso al sistema requiere autenticación
- Solo usuarios activos pueden acceder al sistema
- Toda venta debe contener al menos un producto

---

## 📊 Alcance Funcional

El sistema centraliza la gestión de operaciones comerciales, permitiendo el control de inventario, ventas y compras, así como la administración de usuarios y datos del negocio.

---

## 🧠 Suposiciones del Sistema

- El sistema se ejecuta en entorno local (desktop)
- SQL Server está instalado localmente o en red interna
- No requiere conexión a internet
- Los usuarios cuentan con roles definidos previamente

---

## 📌 Resumen

Sistema orientado a la gestión comercial de negocios pequeños y medianos, con arquitectura modular que permite mantenimiento sencillo y escalabilidad futura.