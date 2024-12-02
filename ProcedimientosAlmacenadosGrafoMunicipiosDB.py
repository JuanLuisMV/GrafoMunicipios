# Ejercicios CRUD (Create - Read - Update - Delete) - (Crear - Leer - Actualizar - Eliminar) STORED PROCEDURES | Tabla Municipios
# Invocaciones
# Ejercicio 1: Crear un nuevo municipio
import mysql.connector

db = mysql.connector.connect(
        user='root', password='R0ckRul3z$',
        host='localhost', database='GrafoMunicipiosDB',
        auth_plugin='mysql_native_password'
)
cursor = db.cursor()

cursor.callproc('CrearMunicipio', ('Nombre del nuevo municipio',))

db.commit()
print("Municipio creado exitosamente.")

cursor.close()
db.close()

# Ejercicio 2: Leer información de un municipio específico
import mysql.connector

db = mysql.connector.connect(
        user='root', password='R0ckRul3z$',
        host='localhost', database='GrafoMunicipiosDB',
        auth_plugin='mysql_native_password'
)
cursor = db.cursor()

cursor.callproc('LeerMunicipio', (1,))

print("Información del municipio consultada exitosamente")

for result in cursor.stored_results():
    print(result.fetchall())

cursor.close()
db.close()

# Ejercicio 3: Actualizar el nombre de un municipio
import mysql.connector

db = mysql.connector.connect(
        user='root', password='R0ckRul3z$',
        host='localhost', database='GrafoMunicipiosDB',
        auth_plugin='mysql_native_password'
)
cursor = db.cursor()

cursor.callproc('ActualizarMunicipio', (60, 'Nuevo vombre del municipio'))

db.commit()
print("Nombre del municipio actualizado exitosamente.")

cursor.close()
db.close()

# Ejercicio 4: Eliminar un municipio
import mysql.connector

db = mysql.connector.connect(
        user='root', password='R0ckRul3z$',
        host='localhost', database='GrafoMunicipiosDB',
        auth_plugin='mysql_native_password'
)
cursor = db.cursor()

cursor.callproc('EliminarMunicipio', (59,))

db.commit()
print("Municipio eliminado exitosamente.")

cursor.close()
db.close()


# Ejercicios CRUD (Create - Read - Update - Delete) - (Crear - Leer - Actualizar - Eliminar) STORED PROCEDURES | Tabla Municipios
# Invocaciones
# Ejercicio 1: Crear una nueva conexión
import mysql.connector

db = mysql.connector.connect(
        user='root', password='R0ckRul3z$',
        host='localhost', database='GrafoMunicipiosDB',
        auth_plugin='mysql_native_password'
)
cursor = db.cursor()

cursor.callproc('CrearConexion', (1, 'Nombre del municipio Origen', 2, 'Nombre del municipio Destino'))

db.commit() 
print("Conexión creada exitosamente.")

cursor.close()
db.close()

# Ejercicio 2: Leer información de una conexión específica
import mysql.connector

db = mysql.connector.connect(
        user='root', password='R0ckRul3z$',
        host='localhost', database='GrafoMunicipiosDB',
        auth_plugin='mysql_native_password'
)
cursor = db.cursor()

cursor.callproc('LeerConexion', (1,))

print("Información de la conexión consultada exitosamente")

for result in cursor.stored_results():
    print(result.fetchall())

cursor.close()
db.close()

# Ejercicio 3: Actualizar una conexión
import mysql.connector

db = mysql.connector.connect(
        user='root', password='R0ckRul3z$',
        host='localhost', database='GrafoMunicipiosDB',
        auth_plugin='mysql_native_password'
)
cursor = db.cursor()

cursor.callproc('ActualizarConexion', (49, 3, 'Nombre del municipio Origen', 4, 'Nombre del municipio Destino'))

db.commit()
print("Conexión actualizada exitosamente.")

cursor.close()
db.close()

# Ejercicio 4: Eliminar una conexión
import mysql.connector

db = mysql.connector.connect(
        user='root', password='R0ckRul3z$',
        host='localhost', database='GrafoMunicipiosDB',
        auth_plugin='mysql_native_password'
)
cursor = db.cursor()

cursor.callproc('EliminarConexion', (49,))

db.commit()
print("Conexión eliminada exitosamente.")

cursor.close()
db.close()












