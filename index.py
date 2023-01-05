# ------------=[LIBRERIAS NECESARIAS]=------------

import psycopg2
from psycopg2 import errors
from dotenv import load_dotenv
import os
import time
load_dotenv()

# ------------=[FUNCIONES DEFINIDAS]=------------

# Función para elegir usuario
def user_choice() -> str:

    global user
    correct_choice = False

    while (not correct_choice):
        try: 
            print('\t\t-----------------=[ELECCION DE USUARIO]=-----------------\n\n\t1. Admin\n\t2. Gestor\n\t3. Critico\n\t4. Cliente\n\n\t\t-----------------=[ELECCION DE USUARIO]=-----------------\n\n')
            choice = int(input('Elige el usuario con el que deseas conectarte a la base de datos (numero): '))
            if (choice.__eq__(1)):
                # Se ha elegido el rol de admin, por tanto se conectará con el rol de usuario de administrador
                password = str(input('Introduce la contrasena del usuario admin: '))
                if (password.__eq__(os.getenv('admin_password'))):
                    user = 'admin'
                    correct_choice = True
                else:
                    print('Contrasena incorrecta para el usuario admin')
                    time.sleep(2)
            elif (choice.__eq__(2)):
                # Se ha elegido el usuario gestor
                password = str(input('Introduce la contrasena del usuario gestor: '))
                if (password.__eq__(os.getenv('gestor_password'))):
                    user = 'gestor'
                    correct_choice = True
                else:
                    print('Contrasena incorrecta para el usuario gestor')
                    time.sleep(2)
            elif (choice.__eq__(3)):
                # Se ha elegido el usuario critico
                password = str(input('Introduce la contrasena del usuario critico: '))
                if (password.__eq__(os.getenv('critico_password'))):
                    user = 'critico'
                    correct_choice = True
                else:
                    print('Contrasena incorrecta para el usuario critico')
                    time.sleep(2)
            elif (choice.__eq__(4)):
                # Se ha elegido el usuario cliente
                password = str(input('Introduce la contrasena del usuario cliente: '))
                if (password.__eq__(os.getenv('cliente_password'))):
                    user = 'cliente'
                    correct_choice = True
                else:
                    print('Contrasena incorrecta para el usuario cliente')
                    time.sleep(2)
            else:
                print('Introduce una opcion correcta (numero del 1 al 4)')
                time.sleep(2)
        except ValueError:
            print('Introduce una opcion valida (numero del 1 al 4)')

        os.system('cls')
    
    print('Contrasena correcta!, estableciendo conexion...')
    time.sleep(2)
    user_info = os.getenv(user + '_user')

    return user_info

# Función para establecer conexion con la base de datos

def connection_establishment(user_info: str):

    global connection
    global cursor
    connection = psycopg2.connect(user_info)
    cursor = connection.cursor()
    print('\nConexion establecida correctamente!\n')
    time.sleep(1)

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
    print('\t\t-----------------=[ELECCION DE TIPO DE CONSULTA]=-----------------\n\n\t1. Consulta de tipo select\n\t2. Consulta de tipo insert, delete o update\n\n')
    correct_result = False
    while (not correct_result):
        try:
            result = int(input('Elige la opción deseada (introduciendo el numero de la opcion): '))
            if (result in possible_results):
                correct_result = True
        except ValueError:
            print(f'Introduce un valor valido ({possible_results})')

    return result
    


# Función select_query, ejecuta una consulta con SELECT (consulta que muestra datos)

def select_query(sql_command: str):

    global connection
    global cursor

    try:
        cursor.execute(sql_command)
        rows = cursor.fetchall()
        print('\n\nConsulta realizada correctamente, mostrando resultados...\n\n')
        time.sleep(1)
        for row in rows:
            print(row)
  
    except (errors.UndefinedTable) as undefined_table:
        print(f'\n\nLa tabla que has introducido no existe -> {undefined_table}')
    except (errors.UndefinedColumn) as undefined_column:
        print(f'\n\nLa columna introducida no existe -> {undefined_column}')
    except (errors.InsufficientPrivilege) as permission_error:
        print(f'\n\nEl usuario elegido ({user}) no tiene permisos para realizar esta accion -> {permission_error}')
    except (errors.SyntaxError) as syntax_error:
        print(f'\n\nError en la sintaxis de la consulta SQL -> {syntax_error}')

# Función insert_query, ejecuta una consulta para introducir, borrar o actualizar datos

def insert_query(sql_command: str):
    
    global connection
    global cursor
    
    try:
        cursor.execute(sql_command)
        connection.commit()
        print('\nConsulta realizada correctamente!')
    except (errors.UndefinedTable) as undefined_table:
        print(f'\n\nLa tabla que has introducido no existe -> {undefined_table}')
    except (errors.UndefinedColumn) as undefined_column:
        print(f'\n\nLa columna introducida no existe -> {undefined_column}')
    except (errors.InsufficientPrivilege) as permission_error:
        print(f'\n\nEl usuario elegido ({user}) no tiene permisos para realizar esta accion -> {permission_error}')
    except (errors.UniqueViolation) as unique_violation:
        print(f'\n\nLa consulta viola una restriccion de unicidad (llave ya existente) -> {unique_violation}')
    except (errors.ForeignKeyViolation) as foreign_key_violation:
        print(f'\n\nViolacion de clave foranea (no esta presente en la tabla) -> {foreign_key_violation}')
    except (errors.SyntaxError) as syntax_error:
        print(f'\n\nError en la sintaxis de la consulta SQL -> {syntax_error}')

# Funcion more_querys, pregunta al usuario si quiere hacer mas consultas, y evitar que el programa acabe ejecución

def more_querys() -> bool:
    result: bool
    choice_succeded = False
    choice = ''
    while (not choice_succeded):
        try:
            choice = str(input('\n\n¿Desea hacer mas consultas? (si / no): '))
            if (choice.__eq__('si')):
                result = True
                choice_succeded = True
            elif (choice.__eq__('no')):
                result = False
                choice_succeded = True
        except ValueError:
            print('\n\nIntroduce una opcion valida (si / no)')

    
    return result

# Función main, representa el hilo principal o main del programa1

def main():
    
    try:

        os.system('cls')
        running = True

        while (running):
            # Primero se deberá elegir el usuario, y acto seguido abrir la conexion con la base de datos
            try:
                connection_establishment(user_choice())
            except (psycopg2.OperationalError):
                print('Error en la conexion a la base de datos')
                running = False
                print('\n\n\t\t-----------------=[PROGRAMA FINALIZADO POR FALLO DE CONEXION]=-----------------\n\n')
                break
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
                print('\n\t\t-----------------=[PROGRAMA FINALIZADO]=-----------------\n\n')
                running = False
    except KeyboardInterrupt:
        print('\n\n\t\t-----------------=[PROGRAMA FINALIZADO POR TECLADO]=-----------------\n\n')
        

# ------------=[PROGRAMA PRINCIPAL]=------------

main()