-- Ejercicios CRUD (Create - Read - Update - Delete) - (Crear - Leer - Actualizar - Eliminar) STORED PROCEDURES | Tabla Municipios
-- Ejercicio 1: Crear un nuevo municipio
USE GrafoMunicipiosDB;

DELIMITER //
CREATE PROCEDURE CrearMunicipio ( 
	IN Nombre VARCHAR(40) 
) 
BEGIN 
	INSERT INTO Municipios (NombreMunicipio) VALUES (Nombre); 
END //
DELIMITER ;

CALL CrearMunicipio('Nombre del nuevo municipio');

-- Ejercicio 2: Leer información de un municipio específico
DELIMITER //
CREATE PROCEDURE LeerMunicipio (
    IN ID INT
)
BEGIN
    SELECT * FROM Municipios WHERE IDMunicipio = ID;
END //
DELIMITER ;

CALL LeerMunicipio('ID del municipio');

-- Ejercicio 3: Actualizar el nombre de un municipio
DELIMITER //
CREATE PROCEDURE ActualizarMunicipio (
    IN ID INT,
    IN NuevoNombre VARCHAR(40)
)
BEGIN
    UPDATE Municipios SET NombreMunicipio = NuevoNombre WHERE IDMunicipio = ID;
END //
DELIMITER ;

CALL ActualizarMunicipio('ID del municipio', 'Nuevo nombre');

-- Ejercicio 4: Eliminar un municipio
DELIMITER //
CREATE PROCEDURE EliminarMunicipio (
    IN ID INT
)
BEGIN
    DELETE FROM Municipios WHERE IDMunicipio = ID;
END //
DELIMITER ;

CALL EliminarMunicipio('ID del municipio');

-- Ejercicios CRUD (Create - Read - Update - Delete) - (Crear - Leer - Actualizar - Eliminar) STORED PROCEDURES | Tabla Conexiones
-- Ejercicio 1: Crear una nueva conexión
DELIMITER //
CREATE PROCEDURE CrearConexion (
    IN IDOrigen INT,
    IN NombreOrigen VARCHAR(40),
    IN IDDestino INT,
    IN NombreDestino VARCHAR(40)
)
BEGIN
    INSERT INTO Conexiones (IDMunicipioOrigen, NombreMunicipioOrigen, IDMunicipioDestino, NombreMunicipioDestino) 
    VALUES (IDOrigen, NombreOrigen, IDDestino, NombreDestino);
END //
DELIMITER ;

CALL CrearConexion('ID del municipio origen', 'Nombre del municipio origen', 'ID del municipio destino', 'Nombre del municipio destino');

-- Ejercicio 2: Leer información de una conexión específica
DELIMITER //
CREATE PROCEDURE LeerConexion (
    IN ID INT
)
BEGIN
    SELECT * FROM Conexiones WHERE IDConexión = ID;
END //
DELIMITER ;

CALL LeerConexion('ID de la conexión');

-- Ejercicio 3: Actualizar una conexión
DELIMITER //
CREATE PROCEDURE ActualizarConexion (
    IN ID INT,
    IN NuevoIDOrigen INT,
    IN NuevoNombreOrigen VARCHAR(40),
    IN NuevoIDDestino INT,
    IN NuevoNombreDestino VARCHAR(40)
)
BEGIN
    UPDATE Conexiones 
    SET IDMunicipioOrigen = NuevoIDOrigen, NombreMunicipioOrigen = NuevoNombreOrigen, 
        IDMunicipioDestino = NuevoIDDestino, NombreMunicipioDestino = NuevoNombreDestino 
    WHERE IDConexión = ID;
END //
DELIMITER ;

CALL ActualizarConexion('ID del municipio origen', 'Nombre del municipio origen', 'ID del municipio destino', 'Nombre del municipio destino');

-- Ejercicio 4: Eliminar una conexión
DELIMITER //
CREATE PROCEDURE EliminarConexion (
    IN ID INT
)
BEGIN
    DELETE FROM Conexiones WHERE IDConexión = ID;
END //
DELIMITER ;

CALL EliminarConexion('ID de la conexión');
