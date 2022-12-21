# ------------ [LIBRERIAS NECESARIAS] ------------

import psycopg2

# ------------ [FUNCIONES DEFINIDAS] ------------

# Función main (método principal)
def main():
    '''
    En primer lugar tenemos que establecer la conexion al servidor, que en este caso es una base de datos
    '''
    connection_info = 'host=localhost port=5432 user=postgres password=postgres dbname=peliculas_final'
    connection = psycopg2.connect(connection_info)
    
    # Una vez la xonexión establecida, creamos el cursor para cargar el contenido de la consultas
    cursor = connection.cursor()
    
    cursor.execute('select * from peliculas.peliculas')
    