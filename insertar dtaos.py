# Esto importa el módulo mysql.connector, que proporciona funcionalidades para conectarse y manipular bases de datos MySQL desde Python.
import mysql.connector

'''Aquí se establece la conexión a la base de datos MySQL.
Se proporcionan los detalles de la conexión, como el host, usuario, contraseña y nombre de la base de datos.
Asegúrate de reemplazar 'tu_host_mysql', 'tu_usuario_mysql', 'tu_contraseña_mysql' y 'tu_base_de_datos_mysql'
con los valores correspondientes para tu configuración de MySQL.'''
conn = mysql.connector.connect(
    host='tu_host_mysql',
    user='tu_usuario_mysql',
    password='tu_contraseña_mysql',
    database='tu_base_de_datos_mysql'
)

# Un cursor es un objeto que permite ejecutar sentencias SQL en la base de datos. Se utilizará para ejecutar las consultas SQL en la base de datos.
cursor = conn.cursor()

'''Esta función llamada insert_data toma dos parámetros: category y product.
Dentro de la función, se ejecutan dos consultas SQL para insertar datos en las tablas category y products.
La primera consulta inserta una nueva categoría y obtiene el category_id generado automáticamente.
La segunda consulta inserta un nuevo producto asociado a esa categoría utilizando el category_id.
Finalmente, se confirma la transacción utilizando conn.commit().'''
def insert_data(category, product):
    # Insertar la categoría y obtener el ID generado automáticamente
    cursor.execute("INSERT INTO category (category) VALUES (%s)", (category,))
    category_id = cursor.lastrowid
    
    # Insertar el producto asociado a la categoría
    cursor.execute("INSERT INTO products (product, id_c) VALUES (%s, %s)", (product, category_id))
    
    # Confirmar la transacción
    conn.commit()

'''Aquí se llama a la función insert_data con los valores de ejemplo 'Electronics' y 'Laptop',
    que serán insertados como una nueva categoría y un nuevo producto, respectivamente.'''
insert_data('Electronics', 'Laptop')

'''se cierra la conexión a la base de datos una vez que se han insertado los datos necesarios.
Esto es importante para liberar los recursos y cerrar la conexión de manera adecuada.'''
conn.close()
