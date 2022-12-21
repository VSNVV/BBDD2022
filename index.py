# ------------ [LIBRERIAS NECESARIAS] ------------

import psycopg2
from dotenv import load_dotenv
import os

# ------------ [FUNCIONES DEFINIDAS] ------------

# Función para establecer conexxion con la base de datos
# Función main (método principal)
def main():
    '''
    En primer lugar tenemos que establecer la conexion al servidor, que en este caso es una base de datos
    '''
    load_dotenv()
    server = os.getenv('server_info')
    connection = psycopg2.connect(server)
    
    # Una vez la xonexión establecida, creamos el cursor para cargar el contenido de la consultas
    cursor = connection.cursor()
    
    cursor.execute('select * from peliculas.criticas;')

    # El cursos cargará todos los valores de la tabla peliculas.criticas
    for critico, puntacion, texto, anno_peliculas, titulo_peliculas, nombre_pag_web, fecha in cursor.fetchall():
        print(critico, puntacion, texto, anno_peliculas, titulo_peliculas, nombre_pag_web, fecha)
    
    # Cerramos la conexión

    cursor.close()
    connection.close()

# Programa Principal

main()