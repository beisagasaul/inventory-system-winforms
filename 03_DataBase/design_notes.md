# 🗄️ Database Design Notes - Relationships Explanation  
# 🗄️ Notas de Diseño de Base de Datos - Explicación de Relaciones

---

# 🇺🇸 English Version

## 🔗 1. Product → UnitOfMeasure (Many-to-One)

Each product is associated with one unit of measure.

- A unit of measure (Unit, Kg, Liter, etc.) can be used by many products.
- Each product belongs to only one unit of measure.

**Purpose:**
Ensures consistency in product measurement and avoids data duplication.

---

## 🔗 2. Product → PurchaseDetail (One-to-Many)

A product can appear in many purchase details.

- Each purchase detail represents a product entry in a purchase.
- A product can be purchased multiple times in different transactions.

**Purpose:**
Tracks product acquisition history and updates inventory.

---

## 🔗 3. Product → SaleDetail (One-to-Many)

A product can appear in many sales details.

- Each sale detail represents a product sold in a transaction.
- A product can be sold multiple times across different sales.

**Purpose:**
Supports sales tracking and inventory reduction per product.

---

## 🔗 4. Purchase → PurchaseDetail (One-to-Many)

A purchase can include multiple products.

- Each purchase has one or more purchase details.
- Each detail includes product, quantity, and unit price.

**Purpose:**
Normalizes purchase data and supports multi-product transactions.

---

## 🔗 5. Sale → SaleDetail (One-to-Many)

A sale can contain multiple products.

- Each sale has one or more sale details.
- Each detail defines product, quantity, and unit price.

**Purpose:**
Allows complex sales with multiple products.

---

## 🔗 6. Supplier → Purchase (One-to-Many)

A supplier can be linked to multiple purchases.

- Each purchase is associated with one supplier.
- A supplier can supply products in many purchases.

**Purpose:**
Tracks supplier history and procurement operations.

---

## 🔗 7. Customer → Sale (One-to-Many, Optional)

A customer can be associated with multiple sales.

- A sale may or may not include a customer.
- Useful for anonymous or direct sales.

**Purpose:**
Provides flexibility in sales registration.

---

## 🔗 8. Employee → UserAccount (One-to-One)

Each employee has one user account.

- Each system user is linked to a single employee.
- Ensures that only employees can access the system.

**Purpose:**
Controls authentication and system access.

---

## 🔗 9. UserAccount → Role (Many-to-Many via UserRole)

Users can have multiple roles.

- A user can have multiple roles (Admin, Seller, etc.).
- A role can be assigned to multiple users.

**Purpose:**
Implements Role-Based Access Control (RBAC).

---

## 🔗 10. Product → StockMovement (One-to-Many)

A product has multiple stock movement records.

- Each movement represents inventory changes (IN / OUT).
- Tracks historical stock changes.

**Purpose:**
Provides full traceability of inventory movements.

---

## 📌 Summary

The database follows a normalized relational model designed to ensure:

- Data integrity
- Scalability
- Transaction traceability
- Role-based access control

---

# 🇪🇸 Versión en Español

## 🔗 1. Producto → Unidad de Medida (Muchos a Uno)

Cada producto está asociado a una unidad de medida.

- Una unidad de medida (Unidad, Kg, Litro, etc.) puede ser utilizada por muchos productos.
- Cada producto pertenece a una sola unidad de medida.

**Propósito:**
Mantener consistencia en las unidades y evitar duplicación de datos.

---

## 🔗 2. Producto → Detalle de Compra (Uno a Muchos)

Un producto puede aparecer en muchos detalles de compra.

- Cada detalle de compra representa un producto dentro de una compra.
- Un producto puede ser comprado múltiples veces.

**Propósito:**
Registrar historial de compras y actualizar inventario.

---

## 🔗 3. Producto → Detalle de Venta (Uno a Muchos)

Un producto puede aparecer en muchos detalles de venta.

- Cada detalle de venta representa un producto vendido.
- Un producto puede venderse en múltiples transacciones.

**Propósito:**
Controlar ventas y reducir inventario.

---

## 🔗 4. Compra → Detalle de Compra (Uno a Muchos)

Una compra puede incluir múltiples productos.

- Cada compra tiene uno o más detalles.
- Cada detalle incluye producto, cantidad y precio.

**Propósito:**
Normalización y soporte de compras múltiples.

---

## 🔗 5. Venta → Detalle de Venta (Uno a Muchos)

Una venta puede contener múltiples productos.

- Cada venta tiene uno o más detalles.
- Cada detalle define producto, cantidad y precio.

**Propósito:**
Permitir ventas complejas con varios productos.

---

## 🔗 6. Proveedor → Compra (Uno a Muchos)

Un proveedor puede estar asociado a múltiples compras.

- Cada compra está vinculada a un proveedor.
- Un proveedor puede abastecer múltiples compras.

**Propósito:**
Control de historial de proveedores.

---

## 🔗 7. Cliente → Venta (Uno a Muchos, Opcional)

Un cliente puede tener múltiples ventas.

- Una venta puede o no tener cliente asignado.
- Útil para ventas rápidas o sin registro.

**Propósito:**
Flexibilidad en el registro de ventas.

---

## 🔗 8. Empleado → Usuario (Uno a Uno)

Cada empleado tiene un usuario del sistema.

- Cada usuario está vinculado a un empleado.
- Solo empleados pueden acceder al sistema.

**Propósito:**
Control de autenticación y acceso.

---

## 🔗 9. Usuario → Rol (Muchos a Muchos vía UserRole)

Un usuario puede tener múltiples roles.

- Un usuario puede tener varios roles (Administrador, Vendedor).
- Un rol puede pertenecer a varios usuarios.

**Propósito:**
Implementar control de acceso basado en roles (RBAC).

---

## 🔗 10. Producto → Movimiento de Stock (Uno a Muchos)

Un producto tiene múltiples movimientos de stock.

- Cada movimiento representa entrada o salida de inventario.
- Permite trazabilidad del inventario.

**Propósito:**
Historial completo de cambios de stock.

---

## 📌 Resumen

La base de datos sigue un modelo relacional normalizado que garantiza:

- Integridad de datos
- Escalabilidad
- Trazabilidad de transacciones
- Control de acceso por roles