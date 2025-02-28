CREATE DATABASE IF NOT EXISTS CarDealership;
USE CarDealership;

CREATE TABLE Clientes (
    Nombres VARCHAR(100),
    Telefono VARCHAR(20),
    correo VARCHAR(100),
    Direccion VARCHAR(255),
    Frecuencia VARCHAR(50),
    PRIMARY KEY (Telefono, correo) 
);

CREATE TABLE Vendedores (
    Nombre VARCHAR(100),
    NumEmpleado INT PRIMARY KEY,
    FechaContratacion DATE,
    NumVentas INT
);

CREATE TABLE Vehiculos (
    Marca VARCHAR(20),
    Modelo VARCHAR(30),
    Anio INT,
    NumSerie INT PRIMARY KEY,
    Precio DECIMAL(10,2),
    Color VARCHAR(20),
    TipoCombustible VARCHAR(20),
    Estado VARCHAR(45),
    Disponibilidad VARCHAR(2),
    Seguro VARCHAR(2)
);

CREATE TABLE Seguro (
    Marca VARCHAR(45),
    Seguro VARCHAR(2),
    Placa VARCHAR(20),
    Precio DECIMAL(10,2),
    idCliente VARCHAR(45),
    Color VARCHAR(45),
    PRIMARY KEY (Marca, Seguro, Placa, idCliente, Color)
);

CREATE TABLE Mantenimiento (
    ServCliente VARCHAR(45),
    VehiculoNuevo VARCHAR(2),
    Preventivo VARCHAR(45),
    Correctivo VARCHAR(45),
    Costo INT,
    Fecha DATE,
    Servicio VARCHAR(45),
    Seguro VARCHAR(2),
    Vehiculo VARCHAR(45),
    costo DECIMAL(10,5)
);

CREATE TABLE Ventas (
    idCliente VARCHAR(100),
    idVendedor INT,
    Vehiculo INT,
    FechaVenta DATE,
    MetodoPago VARCHAR(45),
    Transaccion VARCHAR(45),
    PRIMARY KEY (idCliente, idVendedor, Vehiculo, FechaVenta)
);

CREATE TABLE VehiculoMasVendido (
    NumventasVehiculo INT,
    VehiculoMasVendido VARCHAR(20),
    Disponibilidad INT,
    NumInventario INT,
    VendedorMasVentas VARCHAR(45)
);

CREATE TABLE NumServicios (
    NumServicios INT,
    ComprasRealizadas INT
);

CREATE TABLE DetalleVenta (
    Campo VARCHAR(100),
    PRIMARY KEY (Campo)
);

CREATE TABLE Factura (
    Campo VARCHAR(100),
    PRIMARY KEY (Campo)
);
