import mysql.connector
import pandas as pd
import numpy as np

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
df = pd.read_csv('enemdu_vivienda_hogar_2023_I_trimestre.csv', delimiter=';', dtype={'id_hogar': str})
df = df.replace({np.nan: None, r'^\s*$': None}, regex=True)
# Iteramos sobre cada fila del dataframe
for index, row in df.iterrows():
    values = ", ".join(
        f"'{value}'" if value is not None else 'NULL'
        for value in [
            row['vi01'], row['vi02'], row['vi03a'], row['vi03b'], row['vi04a'], row['vi04b'], 
            row['vi05a'], row['vi05b'], row['vi10a'], row['id_vivienda']
        ]
    )
    query_infraestructura_vivienda = f"""
        INSERT INTO infraestructura_vivienda (vi01, vi02, vi03a, vi03b, vi04a, vi04b, vi05a, vi05b, vi10a, id_vivienda)
        VALUES ({values})
    """
    try:
        # Ejecutamos la sentencia SQL
        cursor.execute(query_infraestructura_vivienda)
        # Hacemos commit para que los cambios se guarden en la base de datos
        cnx.commit()
    except mysql.connector.Error as error:
        print(f"Error al insertar datos en infraestructura_vivienda: {error}")
        print(f"Consulta que falló: {query_infraestructura_vivienda}")
