import mysql.connector
import pandas as pd

# Datos de conexión a la base de datos
db_config = {
    'host': '127.0.0.1',
    'user': 'root',
    'password': '12345678',
    'database': 'mydb'  # Nombre de la base de datos
}

# Crea una conexión a la base de datos
cnx = mysql.connector.connect(**db_config)
cursor = cnx.cursor()

# Cargamos los datos del archivo csv en un dataframe de pandas
df = pd.read_csv('enemdu_vivienda_hogar_2023_I_trimestre.csv', delimiter = ';')

# Iteramos sobre cada fila del dataframe
for index, row in df.iterrows():
    # Preparamos la sentencia SQL para insertar los datos en la tabla 'Vivienda'
    query = f"""
    INSERT INTO Vivienda (id_vivienda, ciudad, panelm, vivienda_n, area, conglomerado, vi14) 
    VALUES({row['id_vivienda']}, {row['ciudad']}, {row['panelm']}, 
    {row['vivienda']}, {row['area']}, {row['conglomerado']}, {row['vi14']})
    """
    try:
        # Ejecutamos la sentencia SQL
        cursor.execute(query)
        # Hacemos commit para que los cambios se guarden en la base de datos
        cnx.commit()
    except mysql.connector.Error as error:
        # En caso de error, no cerramos la conexión, sino que continuamos con la siguiente fila
        print(f"Error: {error}")

# Cierra la conexión
cursor.close()
cnx.close()
