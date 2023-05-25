use bddInventario;
CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(255),
    telefono VARCHAR(20)
);
CREATE TABLE Tipos (
    id_tipo INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    id_proveedor INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);
CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    cargo VARCHAR(100)
);
CREATE TABLE Ambiente (
    id_ambiente INT PRIMARY KEY,
    nombre VARCHAR(100),
    id_empleado_a_cargo INT,
    FOREIGN KEY (id_empleado_a_cargo) REFERENCES Empleados(id_empleado)
);
CREATE TABLE Equipos (
    id_equipo INT PRIMARY KEY,
    nombre_equipo VARCHAR(100)
);
CREATE TABLE Equipo_Empleado (
    id_equipo INT,
    id_empleado INT,
    PRIMARY KEY (id_equipo, id_empleado),
    FOREIGN KEY (id_equipo) REFERENCES Equipos(id_equipo),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);
CREATE TABLE Items (
    id_item INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    precio DECIMAL(10, 2),
    fecha_alta DATE,
    fecha_baja DATE,
    codigo_tipo INT,
    FOREIGN KEY (codigo_tipo) REFERENCES Tipos(id_tipo)
);
CREATE TABLE Inventario (
    id_inventario INT PRIMARY KEY,
    fecha_inicio DATE,
    fecha_finalizacion DATE,
    id_equipo_trabajo INT,
    id_ambiente INT,
    FOREIGN KEY (id_equipo_trabajo) REFERENCES Equipos(id_equipo),
    FOREIGN KEY (id_ambiente) REFERENCES Ambiente(id_ambiente)
);
CREATE TABLE Items_Inventario (
    id_inventario INT,
    id_item INT,
    cantidad INT,
    FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario),
    FOREIGN KEY (id_item) REFERENCES Items(id_item)
);

-- Insertar datos ficticios en la tabla Proveedores
INSERT INTO Proveedores (id_proveedor, nombre, direccion, telefono)
VALUES (1, 'Proveedor 1', 'Dirección 1', '1234567890'),
       (2, 'Proveedor 2', 'Dirección 2', '9876543210');

-- Insertar datos ficticios en la tabla Tipos
INSERT INTO Tipos (id_tipo, nombre, descripcion, id_proveedor)
VALUES (1, 'Tipo 1', 'Descripción 1', 1),
       (2, 'Tipo 2', 'Descripción 2', 2);

-- Insertar datos ficticios en la tabla Empleados
INSERT INTO Empleados (id_empleado, nombre, cargo)
VALUES (1, 'Empleado 1', 'Cargo 1'),
       (2, 'Empleado 2', 'Cargo 2');

-- Insertar datos ficticios en la tabla Ambiente
INSERT INTO Ambiente (id_ambiente, nombre, id_empleado_a_cargo)
VALUES (1, 'Ambiente 1', 1),
       (2, 'Ambiente 2', 2);

-- Insertar datos ficticios en la tabla Equipos
INSERT INTO Equipos (id_equipo, nombre_equipo)
VALUES (1, 'Equipo 1'),
       (2, 'Equipo 2');

-- Insertar datos ficticios en la tabla Equipo_Empleado
INSERT INTO Equipo_Empleado (id_equipo, id_empleado)
VALUES (1, 1),
       (2, 2);

-- Insertar datos ficticios en la tabla Items
INSERT INTO Items (id_item, nombre, descripcion, precio, fecha_alta, fecha_baja, codigo_tipo)
VALUES (1, 'Item 1', 'Descripción 1', 10.99, '2023-01-01', NULL, 1),
       (2, 'Item 2', 'Descripción 2', 15.99, '2023-02-01', NULL, 2);

-- Insertar datos ficticios en la tabla Inventario
INSERT INTO Inventario (id_inventario, fecha_inicio, fecha_finalizacion, id_equipo_trabajo, id_ambiente)
VALUES (1, '2023-01-01', '2023-01-15', 1, 1),
       (2, '2023-02-01', '2023-02-15', 2, 2);

-- Insertar datos ficticios en la tabla Items_Inventario
INSERT INTO Items_Inventario (id_inventario, id_item, cantidad)
VALUES (1, 1, 10),
       (1, 2, 5),
       (2, 1, 8),
       (2, 2, 15);


