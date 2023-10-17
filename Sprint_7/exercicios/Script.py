import pandas as pd
import boto3
import os

# Leitura dos arquivos CSV em DataFrames

dtype = {
    'id': str,
    'tituloPincipal': str,
    'tituloOriginal': str,
    'anoLancamento': int,
    'tempoMinutos': int,
    'genero': str,
    'notaMedia': float,
    'numeroVotos': int,
    'generoArtista': str,
    'personagem': str,
    'nomeArtista': str,
    'anoNascimento': str,  
    'anoFalecimento': str,  
    'profissao': str,
    'titulosMaisConhecidos': str,
}
# Lê o arquivo CSV, especificando o delimitador e tratando '\N' como NaN (valores nulos)
movies_df = pd.read_csv('movies.csv', delimiter='|', na_values=['\\N'])
series_df = pd.read_csv('series.csv', delimiter='|', na_values=['\\N'])

# Configurar as variáveis de ambiente com as credenciais e a região
os.environ["AWS_ACCESS_KEY_ID"] = 'AKIA3TV6GR4KGACAWIGC'
os.environ["AWS_SECRET_ACCESS_KEY"] = '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'
os.environ["AWS_DEFAULT_REGION"] = 'us-east-1'

# Especifica o nome do arquivo a ser carregado e o nome do bucket
file_names = ['movies.csv', 'series.csv']
bucket_name = 'sprint-7-lab-glue'

# Inicializa o cliente S3
s3 = boto3.client(
    's3',
    aws_access_key_id='AKIA3TV6GR4KGACAWIGC',
    aws_secret_access_key='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',
    region_name='us-east-1'
)

# Realiza o upload dos arquivos para o S3
for file_name in file_names:
    object_name = f'data/{file_name}'
    try:
        s3.upload_file(file_name, bucket_name, object_name)
        print(f'Successfully uploaded {file_name} to {bucket_name}/{object_name}')
    except Exception as e:
        print(f'Error uploading {file_name}: {e}')
