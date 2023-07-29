import pandas as pd

def obtener_informacion_para_base_de_datos(ruta_csv):
    try:
        # Intenta leer el archivo CSV sin especificar columnas
        df = pd.read_csv(ruta_csv, sep=';', low_memory=False)
        
        # Información general del DataFrame
        print("Información general del DataFrame:")
        print(df.info())
        print("\n")
        
        # Tipos de datos de cada columna y valores únicos
        print("Tipos de datos de cada columna y valores únicos:")
        for col in df.columns:
            print(f"Columna: {col}")
            print(f"Tipo de dato: {df[col].dtype}")
            print(f"Valores únicos: {df[col].nunique()}")
            print("\n")
        
        # Detalles sobre el delimitador utilizado
        print("Detalles sobre el delimitador utilizado:")
        with open(ruta_csv, 'r') as file:
            first_line = file.readline()
            if ';' in first_line:
                print("El delimitador utilizado es ';'.")
            elif ',' in first_line:
                print("El delimitador utilizado es ','.")
            else:
                print("No se puede determinar el delimitador utilizado.")
        print("\n")
        
        # Verificar registros duplicados en la columna 'id_vivienda'
        duplicados = df[df.duplicated('id_vivienda', keep=False)]
        total_duplicados = len(duplicados)
        
        if total_duplicados > 0:
            print(f"Total de registros duplicados en la columna 'id_vivienda': {total_duplicados}")
            print("Registros duplicados en la columna 'id_vivienda':")
            print(duplicados)
        else:
            print("No se encontraron registros duplicados en la columna 'id_vivienda'.")

        # Obtener el valor máximo de la columna 'id_hogar'
        max_id_hogar = df['id_hogar'].max()
        print(f"El valor máximo de 'id_hogar' es: {max_id_hogar}")

    except pd.errors.ParserError as pe:
        # Si ocurre un error de lectura, muestra el mensaje de error
        print("Error al leer el archivo CSV:", pe)

# Ruta del archivo CSV
ruta_csv = r"enemdu_vivienda_hogar_2023_I_trimestre.csv"

# Llama a la función para obtener información para poblar la base de datos
obtener_informacion_para_base_de_datos(ruta_csv)
