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
            row['vi06'], row['vi07'], row['vi07a'], row['vi07b'], row['vi08'], row['vi09'], row['vi09a'],
            row['vi09b'], row['vi10'], row['vi101'], row['vi102'], row['vi11'], row['vi12'], row['vi13'], 
            float(row['vi141']) if row['vi141'] is not None else 'NULL', 
            row['vi142'], row['vi143'], row['vi144'], row['vi1511'], row['vi1521'], row['vi1512'], row['vi1522'], 
            row['vi1531'], row['vi1541'], row['vi1532'], row['vi1542'], row['vi1533'], row['vi1543'], row['vi1534'],
            row['vi1544'], row['vi1535'], row['vi1545'], row['vi1536'], row['vi1546'], row['id_hogar']
        ]
    )
    query_encuesta_hogar = f"""
        INSERT INTO encuesta_hogar (vi06, vi07, vi07a, vi07b, vi08, vi09, vi09a, vi09b, vi10, vi101, vi102, vi11, vi12, vi13,
        vi141, vi142, vi143, vi144, vi1511, vi1521, vi1512, vi1522, vi1531, vi1541, vi1532, vi1542, vi1533, vi1543, vi1534,
        vi1544, vi1535, vi1545, vi1536, vi1546, id_hogar)
        VALUES ({values})
    """
    try:
        # Ejecutamos la sentencia SQL
        cursor.execute(query_encuesta_hogar)
        # Hacemos commit para que los cambios se guarden en la base de datos
        cnx.commit()
    except mysql.connector.Error as error:
        print(f"Error al insertar datos en encuesta_hogar: {error}")
        print(f"Consulta que falló: {query_encuesta_hogar}")

# Cierra la conexión
cursor.close()
cnx.close()
