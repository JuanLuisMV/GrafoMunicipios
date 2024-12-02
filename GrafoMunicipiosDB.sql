-- Crear la base de datos
CREATE DATABASE GrafoMunicipiosDB;

-- Usar la base de datos
USE GrafoMunicipiosDB;

-- Crear la tabla para los nodos con IDs que comienzan en 0
CREATE TABLE Municipios (
    IDMunicipio INT AUTO_INCREMENT PRIMARY KEY,
    NombreMunicipio VARCHAR(40) NOT NULL
);

-- Crear la tabla para las conexiones 
CREATE TABLE Conexiones ( 
IDConexión INT AUTO_INCREMENT PRIMARY KEY, 
IDMunicipioOrigen INT, 
NombreMunicipioOrigen VARCHAR(40), 
IDMunicipioDestino INT, 
NombreMunicipioDestino VARCHAR(40)
);

-- Insertar los nodos
INSERT INTO Municipios (NombreMunicipio) VALUES ('Manizales');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Pereira');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Armenia');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Chinchiná');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Villamaria');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Palestina');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Neira');
INSERT INTO Municipios (NombreMunicipio) VALUES ('La Virginia');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Dosquebradas');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Santa Rosa de Cabal');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Cartago');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Calarcá');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Ciscasia');
INSERT INTO Municipios (NombreMunicipio) VALUES ('La Tebaida');
INSERT INTO Municipios (NombreMunicipio) VALUES ('Montenegro');

-- Insertar las conexiones con nombres
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (1, 'Manizales', 2, 'Pereira');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (1, 'Manizales', 3, 'Armenia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (1, 'Manizales', 4, 'Chinchiná');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (1, 'Manizales', 5, 'Villamaria');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (1, 'Manizales', 6, 'Palestina');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (1, 'Manizales', 7, 'Neira');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (1, 'Manizales', 11, 'Cartago');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (1, 'Manizales', 9, 'Dosquebradas');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (1, 'Manizales', 10, 'Santa Rosa de Cabal');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (2, 'Pereira', 1, 'Manizales');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (2, 'Pereira', 11, 'Cartago');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (2, 'Pereira', 8, 'La Virginia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (2, 'Pereira', 10, 'Santa Rosa de Cabal');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (2, 'Pereira', 3, 'Armenia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (2, 'Pereira', 13, 'Ciscasia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (2, 'Pereira', 9, 'Dosquebradas');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (3, 'Armenia', 1, 'Manizales');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (3, 'Armenia', 11, 'Cartago');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (3, 'Armenia', 12, 'Calarcá');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (3, 'Armenia', 13, 'Ciscasia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (3, 'Armenia', 14, 'La Tebaida');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (3, 'Armenia', 15, 'Montenegro');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (3, 'Armenia', 2, 'Pereira');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (3, 'Armenia', 9, 'Dosquebradas');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (3, 'Armenia', 10, 'Santa Rosa de Cabal');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (4, 'Chinchiná', 1, 'Manizales');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (5, 'Villamaria', 1, 'Manizales');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (6, 'Palestina', 1, 'Manizales');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (7, 'Neira', 1, 'Manizales');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (8, 'La Virginia', 11, 'Cartago');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (8, 'La Virginia', 2, 'Pereira');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (9, 'Dosquebradas', 1, 'Manizales');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (9, 'Dosquebradas', 3, 'Armenia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (9, 'Dosquebradas', 11, 'Cartago');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (9, 'Dosquebradas', 2, 'Pereira');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (10, 'Santa Rosa de Cabal', 1, 'Manizales');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (10, 'Santa Rosa de Cabal', 2, 'Pereira');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (10, 'Santa Rosa de Cabal', 3, 'Armenia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (11, 'Cartago', 1, 'Manizales');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (11, 'Cartago', 2, 'Pereira');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (11, 'Cartago', 3, 'Armenia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (11, 'Cartago', 8, 'La Virginia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (11, 'Cartago', 9, 'Dosquebradas');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (12, 'Calarcá', 3, 'Armenia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (13, 'Ciscasia', 3, 'Armenia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (13, 'Ciscasia', 2, 'Pereira');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (14, 'La Tebaida', 3, 'Armenia');
INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) VALUES (15, 'Montenegro', 3, 'Armenia');
