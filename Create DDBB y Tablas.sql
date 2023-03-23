USE master
GO

CREATE DATABASE VentasEmpresa;

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(500),
    precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    fecha_contratacion DATE NOT NULL
);

CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY,
    id_producto INT,
    id_empleado INT,
    fecha_venta DATE NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    telefono VARCHAR(20),
    direccion VARCHAR(500)
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_pedido DATE NOT NULL,
    fecha_entrega DATE,
    direccion_entrega VARCHAR(500),
    estado_pedido VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Detalles_Pedido (
    id_detalle INT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

ALTER TABLE Ventas
ADD id_cliente INT;
ALTER TABLE Ventas
ADD CONSTRAINT fk_ventas_clientes FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente);