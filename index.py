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

    print('\t\t-----------------=[ELECCION DE USUARIO]=-----------------\n\n\t1. Admin\n\t2. Gestor\n\t3. Critico\n\t4. Cliente\n\n\t\t-----------------=[ELECCION DE USUARIO]=-----------------\n\n')
    correct_choice = False

    while (not correct_choice):
        choice = int(input('Elige el usuario con el que deseas conectarte a la base de datos (numero): '))
        if (choice.__eq__(1)):
            # Se ha elegido el rol de usuario, por tanto se conectará con el rol de usuario de administrador
            user = 'admin' + '_user'
            correct_choice = True
        elif (choice.__eq__(2)):
            # Se ha elegido el usuario gestor
            user = 'gestor' + '_user'
            correct_choice = True
        elif (choice.__eq__(3)):
            # Se ha elegido el usuario critico
            user = 'critico' + '_user'
            correct_choice = True
        elif (choice.__eq__(4)):
            # Se ha elegido el usuario cliente
            user = 'cliente' + '_user'
            correct_choice = True
        else:
            print('Introduce un numero del 1 al 4')

    user_info = os.getenv(user)

    return user_info

# Función para establecer conexion con la base de datos

def connection_establishment(user_info: str):
    global connection
    global cursor
    connection = psycopg2.connect(user_info)
    cursor = connection.cursor()

# Funcion para terminar la conexion

def connection_termination():

    global connection
    global cursor
    cursor.close()
    connection.close()
    print('Conexion cerrada.')

# Función executer, cada vez que se quiere enviar una consulta al servidor se deberá llamar a esta función

def execute(sql_command: str):
    global connection
    global cursor
    cursor.execute(sql_command)
    rows = cursor.fetchall()
    for row in rows:
        print(row)

# ------------=[PROGRAMA PRINCIPAL]=------------

# Primero debemos preguntar por qué usuario se va a realizar la consulta

os.system('cls')
running = True

while (running):
    # Primero se deberá elegir el usuario, y acto seguido abrir la conexion con la base de datos
    connection_establishment(user_choice())
    # Escribimos la consulta a ejecutar:
    sql_command = str(input('Introduce la consulta a realizar: '))
    # Una vez escrita la consulta, la ejecutamos
    execute('SELECT * FROM peliculas.criticas')
    more_commands = str(input('\n\n¿Desea hacer mas consultas? (si / no): '))
    succeded = False
    while (not succeded):
        if (more_commands.__eq__('no')):
            connection_termination # Se termina la conexion
            running = False # El programa acaba ejecucion
            succeded = True
        elif (more_commands.__eq__('si')):
            succeded = True
            os.system('cls')
        else:
            print('Escriba una opcion valida (si / no): ')

print('Cerrando...')
time.sleep(0.5)
print('\t\t-----------------=[PROGRAMA FINALIZADO]=-----------------')