CREATE DATABASE Proyecto_AereolineaDB;

USE Proyecto_AereolineaDB;

CREATE TABLE Cliente (
    Pasaporte INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    FechaNacimiento DATETIME,
    Pais VARCHAR(50),
    Ciudad VARCHAR(50),
    Sector VARCHAR(50),
    Calle VARCHAR(100)
);

CREATE TABLE Aeropuerto (
    IATA VARCHAR(3) PRIMARY KEY,
    Nombre VARCHAR(100),
    Ciudad VARCHAR(50),
    Pais VARCHAR(50)
);

CREATE TABLE Telefono (
    TelefonoID INT PRIMARY KEY,
    Pasaporte INT,
    Telefono VARCHAR(20),
    
    FOREIGN KEY (Pasaporte) REFERENCES Cliente(Pasaporte)
);

CREATE TABLE Email (
    EmailID INT PRIMARY KEY,
    Pasaporte INT,
    Email VARCHAR(100),
    
    FOREIGN KEY (Pasaporte) REFERENCES Cliente(Pasaporte)
);

CREATE TABLE Vuelo (
    NumVuelo INT PRIMARY KEY,
    ModeloAvion VARCHAR(50),
    FechaSalida DATETIME,
    HoraLlegada DATETIME,
    
    IATA_Origen VARCHAR(3) NOT NULL,
    IATA_Destino VARCHAR(3) NOT NULL,
    
    FOREIGN KEY (IATA_Origen) REFERENCES Aeropuerto(IATA),
    FOREIGN KEY (IATA_Destino) REFERENCES Aeropuerto(IATA)
);


CREATE TABLE Reservas (
    PNR INT PRIMARY KEY,
    Pasaporte INT NOT NULL,  
    NumVuelo INT NOT NULL,  
    
    Clase VARCHAR(50),
    Estado VARCHAR(50),
    FechaReserva DATETIME,
    MontoTotal INT,
    NumBillete VARCHAR(50),
    Peso INT,
    TipoEquipaje VARCHAR(50),
    ClasesServicio VARCHAR(50),
    TarifaExtra INT,
    
    FOREIGN KEY (Pasaporte) REFERENCES Cliente(Pasaporte),
    FOREIGN KEY (NumVuelo) REFERENCES Vuelo(NumVuelo)
);
