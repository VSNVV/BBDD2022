# ------------=[LIBRERIAS NECESARIAS]=------------

import psycopg2
from dotenv import load_dotenv
import os
import time
load_dotenv()

# ------------=[VARIABLES GLOBALES]=------------

connection = psycopg2.connect(os.getenv('cliente_user'))
cursor = connection.cursor()

# ------------=[FUNCIONES DEFINIDAS]=------------

# Función para elegir usuario
def user_choice() -> str:

    correct_choice = False

    while (not correct_choice):
        print('\t\t-----------------=[ELECCION DE USUARIO]=-----------------\n\n\t1. Admin\n\t2. Gestor\n\t3. Critico\n\t4. Cliente\n\n\t\t-----------------=[ELECCION DE USUARIO]=-----------------\n\n')
        choice = int(input('Elige el usuario con el que deseas conectarte a la base de datos (numero): '))
        if (choice.__eq__(1)):
            # Se ha elegido el rol de admin, por tanto se conectará con el rol de usuario de administrador
            password = str(input('Introduce la contraseña del usuario admin: '))
            if (password.__eq__(os.getenv('admin_password'))):
                user = 'admin' + '_user'
                correct_choice = True
            else:
                print('Contraseña incorrecta para el usuario admin')
                time.sleep(2)
        elif (choice.__eq__(2)):
            # Se ha elegido el usuario gestor
            password = str(input('Introduce la contrasenna del usuario gestor: '))
            if (password.__eq__(os.getenv('gestor_password'))):
                user = 'gestor' + '_user'
                correct_choice = True
            else:
                print('Contraseña incorrecta para el usuario gestor')
                time.sleep(2)
        elif (choice.__eq__(3)):
            # Se ha elegido el usuario critico
            password = str(input('Introduce la contrasenna del usuario critico: '))
            if (password.__eq__(os.getenv('critico_password'))):
                user = 'critico' + '_user'
                correct_choice = True
            else:
                print('Contraseña incorrecta para el usuario critico')
                time.sleep(2)
        elif (choice.__eq__(4)):
            # Se ha elegido el usuario cliente
            password = str(input('Introduce la contrasenna del usuario cliente: '))
            if (password.__eq__(os.getenv('cliente_password'))):
                user = 'cliente' + '_user'
                correct_choice = True
            else:
                print('Contraseña incorrecta para el usuario cliente')
                time.sleep(2)
        else:
            print('Introduce una opcion correcta (numero del 1 al 4)')
        os.system('cls')
    
    print('Contrasena correcta!')
    time.sleep(2)
    user_info = os.getenv(user)

    return user_info

# Función para establecer conexion con la base de datos

def connection_establishment(user_info: str):
    global connection
    global cursor
    connection = psycopg2.connect(user_info)
    cursor = connection.cursor()

# Funcion para terminar / cerrar la conexion

def connection_termination():

    global connection
    global cursor
    cursor.close()
    connection.close()
    print('Conexion cerrada.')

# Funcion query_choice, elige le tipo de query que se va a ejecutar

def query_choice() -> int:
    possible_results = [1, 2]
    print('\t\t-----------------=[ELECCION DE TIPO DE CONSULTA]=-----------------\n\n\t1. Consulta de tipo select\n\t2. Consulta de tipo insert\n\n')
    correct_result = False
    while (not correct_result):
        result = int(input('Elige la opción deseada (introduciendo el numero de la opcion): '))
        if (result in possible_results):
            correct_result = True
        else:
            print('Introduce una opcion correcta')
    return result
    


# Función select_query, ejecuta una consulta con SELECT (consulta que muestra datos)

def select_query(sql_command: str):
    global connection
    global cursor
    cursor.execute(sql_command)
    rows = cursor.fetchall()
    for row in rows:
        print(row)

# Función insert_query, ejecuta una consulta para introducir datos

def insert_query(sql_command: str):
    global connection
    global cursor
    cursor.execute(sql_command)
    connection.commit()

# Funcion more_querys, pregunta al usuario si quiere hacer mas consultas, y evitar que el programa acabe ejecución

def more_querys() -> bool:
    result: bool
    choice_succeded = False
    choice = ''
    while (not choice_succeded):
        choice = str(input('¿Desea hacer mas consultas? (si / no): '))
        if (choice.__eq__('si')):
            result = True
            choice_succeded = True
        elif (choice.__eq__('no')):
            result = False
            choice_succeded = True
        else:
            print('Introduce una opcion valida (si / no)')
    
    return result

# Función main, representa el hilo principal o main del programa

def main():
    os.system('cls')
    running = True

    while (running):
        # Primero se deberá elegir el usuario, y acto seguido abrir la conexion con la base de datos
        connection_establishment(user_choice())
        # Una vez metidos en la base de datos, elegimos que consulta queremos hacer
        query_type = query_choice()
        if (query_type.__eq__(1)):
            sql_command = str(input('Introduce la consulta a realizar (tipo select): '))
            select_query(sql_command)
        elif (query_type.__eq__(2)):
            sql_command = str(input('Introduce la consulta a realizar (tipo insert): '))
            insert_query(sql_command)
        # Preguntaremos al usuario si quiere hacer mas consultas
        if more_querys().__eq__(False):
            print('Cerrando...')
            connection_termination()
            time.sleep(0.5)
            print('\t\t-----------------=[PROGRAMA FINALIZADO]=-----------------')
            running = False

# ------------=[PROGRAMA PRINCIPAL]=------------

main()