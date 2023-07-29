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
df = pd.read_csv('enemdu_vivienda_hogar_2023_I_trimestre.csv', delimiter=';', dtype={'id_hogar': str})

# Convertimos las comas a puntos en los valores de 'fexp'
df['fexp'] = df['fexp'].str.replace(',', '.').astype(float)

# Iteramos sobre cada fila del dataframe
for index, row in df.iterrows():
    # Preparamos la sentencia SQL para insertar los datos en la tabla 'Hogar'
    query_hogar = f"""
    INSERT INTO Hogar (id_hogar, estrato, fexp, upm, hogar_n, id_vivienda, periodo)
    VALUES ('{row['id_hogar']}', {row['estrato']}, {row['fexp']}, {row['upm']}, {row['hogar']},
    {row['id_vivienda']}, {row['periodo']})
    """
    try:
        # Ejecutamos la sentencia SQL
        cursor.execute(query_hogar)
        # Hacemos commit para que los cambios se guarden en la base de datos
        cnx.commit()
    except mysql.connector.Error as error:
        print(f"Error al insertar hogar: {error}")
        print(f"Consulta que falló: {query_hogar}")

# Cierra la conexión
cursor.close()
cnx.close()
