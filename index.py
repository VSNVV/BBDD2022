# ------------ [LIBRERIAS NECESARIAS] ------------

import psycopg2
from dotenv import load_dotenv
import os

# ------------ [FUNCIONES DEFINIDAS] ------------

# Función para establecer conexxion con la base de datos
# Función executer, cada vez que se quiere enviar una consulta al servidor se deberá llamar a esta función
def executer(command: str):
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
opcion = 1
while(not opcion.__eq__(0)):
    print('\t\t-------------=[Menú Del Programa]=-------------\n')
    print('\t1. Realizar una consulta\n\t2. Insertar datos\n\t3. Modificar datos\n\t4. Salir del programa')
    opcion = int(input('\nElige opcion introduciendo su numero: '))
    if opcion.__eq__(1):
        command = str(input('Introduce la consulta SQL a realizar (con ; al final): '))
        executer(command)
    elif opcion.__eq__(2):
        command = str(input('Introduce la consulta SQL a realizar (con ; al final): '))
        if ('insert' in command):
            executer(command)
        else:
            print('Esta consulta no inserta datos')
    elif opcion.__eq__(3):
        command = str(input('Introduce la consulta para insertar datos'))
        executer(command)
    elif opcion.__eq__(0):
        # Salimos del bucle while y termina el programa
        break
    else:
        print('Opcion incorrecta o numero fuera de rango')