# 🧩 System Use Cases / Casos de Uso del Sistema

---

# 🇺🇸 English Version


## 👥 System Actors

### 👨‍💼 Administrator
Responsible for overall system management:
- User management
- Product management
- System control

### 🧾 Seller
Responsible for business operations:
- Sales registration
- Product consultation
- Customer registration

### ⚙️ System
Handles internal automated processes:
- Stock validation
- Total calculation
- Inventory updates

---

## 🧩 Main Use Cases

---

### 🔐 Login

**Actor:** User (Administrator / Seller)

**Description:** Allows access to the system using credentials.

**Flow:**
1. User enters credentials
2. System validates information
3. If correct, access is granted
4. If incorrect, an error message is displayed

---

### 📦 Manage Products

**Actor:** Administrator

**Description:** Allows management of system products.

**Actions:**
- Register product
- Edit product
- Delete product
- View products

---

### 🛒 Register Sale

**Actor:** Seller

**Description:** Allows registration of product sales.

**Flow:**
1. Select available products
2. Enter quantities
3. System validates stock
4. Total is calculated
5. Sale is saved
6. Stock is automatically updated

---

### 🚚 Register Purchase

**Actor:** Administrator

**Description:** Allows registration of purchases from suppliers.

**Flow:**
1. Select supplier
2. Add purchased products
3. Save purchase
4. Stock is automatically increased

---

### 👥 Manage Customers

**Actor:** Seller / Administrator

**Description:** Allows customer management.

**Actions:**
- Register customer
- Edit customer
- View customer

---

### 👤 Manage Users

**Actor:** Administrator

**Description:** Allows system user management.

**Actions:**
- Create user
- Assign roles
- Activate / deactivate users

---

### 📊 View Inventory

**Actor:** User

**Description:** Displays current product stock levels.

---

## 🔁 General System Flow

Login → Main Menu → Modules (Sales / Purchases / Inventory / Users) → Database

---

## 📌 Summary

Use cases define the main functionalities of the sales and inventory system, describing how users interact with the system and how the application behaves in each scenario.

------------------------------------------------------------------------------

# 🇪🇸 Versión en Español


## 👥 Actores del Sistema

### 👨‍💼 Administrador
Responsable de la gestión general del sistema:
- Gestión de usuarios
- Gestión de productos
- Control del sistema

### 🧾 Vendedor
Encargado de las operaciones comerciales:
- Registro de ventas
- Consulta de productos
- Registro de clientes

### ⚙️ Sistema
Encargado de automatizar procesos internos:
- Validación de stock
- Cálculo de totales
- Actualización de inventario

---

## 🧩 Casos de Uso Principales

---

### 🔐 Iniciar Sesión

**Actor:** Usuario (Administrador / Vendedor)

**Descripción:** Permite el acceso al sistema mediante credenciales.

**Flujo:**
1. El usuario ingresa sus credenciales
2. El sistema valida la información
3. Si es correcto, permite el acceso
4. Si es incorrecto, muestra un mensaje de error

---

### 📦 Gestionar Productos

**Actor:** Administrador

**Descripción:** Permite administrar los productos del sistema.

**Acciones:**
- Registrar producto
- Editar producto
- Eliminar producto
- Consultar productos

---

### 🛒 Registrar Venta

**Actor:** Vendedor

**Descripción:** Permite registrar una venta de productos.

**Flujo:**
1. Seleccionar productos disponibles
2. Ingresar cantidades
3. El sistema valida stock
4. Se calcula el total de la venta
5. Se guarda la venta
6. Se descuenta el stock automáticamente

---

### 🚚 Registrar Compra

**Actor:** Administrador

**Descripción:** Permite registrar compras a proveedores.

**Flujo:**
1. Seleccionar proveedor
2. Agregar productos comprados
3. Guardar la compra
4. El sistema incrementa el stock automáticamente

---

### 👥 Gestionar Clientes

**Actor:** Vendedor / Administrador

**Descripción:** Permite administrar clientes del sistema.

**Acciones:**
- Registrar cliente
- Editar cliente
- Consultar cliente

---

### 👤 Gestionar Usuarios

**Actor:** Administrador

**Descripción:** Permite administrar usuarios del sistema.

**Acciones:**
- Crear usuario
- Asignar roles
- Activar o desactivar usuarios

---

### 📊 Consultar Inventario

**Actor:** Usuario

**Descripción:** Permite visualizar el stock disponible de productos.

---

## 🔁 Flujo General del Sistema

Inicio de sesión → Menú principal → Módulos (Ventas / Compras / Inventario / Usuarios) → Base de datos

---

## 📌 Resumen

Los casos de uso definen las principales funcionalidades del sistema de ventas e inventario, permitiendo entender cómo interactúan los usuarios con el sistema y cómo se comporta la aplicación en cada escenario.