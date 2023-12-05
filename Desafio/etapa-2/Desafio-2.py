# Desafio - Parte II

# Dependências: pandas, boto3, requests

import json
import pandas as pd
import os
import requests
import boto3

# Realizar leitura dos dados dos CSVs

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
    'titulosMaisConhecidos': str
}

movies_df = pd.read_csv('movies.csv', delimiter='|', na_values=['\\N'])
series_df = pd.read_csv('series.csv', delimiter='|', na_values=['\\N'])


print("Leitura concluída")

# Filtrar filmes e séries por gêneros e converter o formato para JSON
''' Os gêneros de minha Squad são: comédia e animação '''

# Filtrar filmes de comédia

movies_df['genero'].fillna('NULL', inplace=True)
comedy_movies_df = movies_df[movies_df['genero'].str.contains('Comedy')]

comedy_movies_df = comedy_movies_df.replace(r'\n', 'NULL', regex=True)

max_lines_per_file = 23000

chunks = [comedy_movies_df[i:i + max_lines_per_file] for i in range(0, len(comedy_movies_df), max_lines_per_file)]

for i, chunk in enumerate(chunks, start=1):
    filename = f'comedy_movies_{i}.json'
    chunk.to_json(filename, orient='records', lines=True)
    print(f'Saved {filename}')

print("Filmes de comédia foram filtrados com sucesso.")

# Filtrar filmes de animação

movies_df['genero'].fillna('NULL', inplace=True)
animation_movies_df = movies_df[movies_df['genero'].str.contains('Animation')]

animation_movies_df = animation_movies_df.replace(r'\n', 'NULL', regex=True)

max_lines_per_file = 23000

chunks = [animation_movies_df[i:i + max_lines_per_file] for i in range(0, len(animation_movies_df), max_lines_per_file)]

for i, chunk in enumerate(chunks, start=1):
    filename = f'animation_movies_{i}.json'
    chunk.to_json(filename, orient='records', lines=True)
    print(f'Saved {filename}')

print("Filmes de animação foram filtrados com sucesso.")

# Filtrar séries de comédia

series_df['genero'].fillna('NULL', inplace=True)
comedy_series_df = series_df[series_df['genero'].str.contains('Comedy')]

comedy_series_df = comedy_series_df.replace(r'\n', 'NULL', regex=True)

max_lines_per_file = 23000

chunks = [comedy_series_df[i:i + max_lines_per_file] for i in range(0, len(comedy_series_df), max_lines_per_file)]

for i, chunk in enumerate(chunks, start=1):
    filename = f'comedy_series_{i}.json'
    chunk.to_json(filename, orient='records', lines=True)
    print(f'Saved {filename}')

print("Séries de comédia foram filtradas com sucesso.")

# Filtrar séries de animação

series_df['genero'].fillna('NULL', inplace=True)
animation_series_df = series_df[series_df['genero'].str.contains('Comedy')]

animation_series_df = animation_series_df.replace(r'\n', 'NULL', regex=True)

max_lines_per_file = 22500

chunks = [animation_series_df[i:i + max_lines_per_file] for i in range(0, len(animation_series_df), max_lines_per_file)]

for i, chunk in enumerate(chunks, start=1):
    filename = f'animation_series_{i}.json'
    chunk.to_json(filename, orient='records', lines=True)
    print(f'Saved {filename}')

print("Séries de animação foram filtradas com sucesso.")

# Configurar os arquivos JSON para facilitar a leitura e o trabalho.
''' Este trecho de código insere todas as linhas dentro de chaves e coloca uma vírgula no final de cada elemento. Foi criada uma pasta 'JSON/' e todos os arquivos .json foram inseridos dentro dela. Tive um problema que uma vírgula foi inserida na ultima linha também, o que me fez remover todas elas manualmente nos 32 arquivos. '''

pasta_json = 'JSON/'

def processar_arquivo_json(nome_arquivo):
    if nome_arquivo.endswith('.json'):
        caminho_completo = os.path.join(pasta_json, nome_arquivo)
        with open(caminho_completo, 'r') as arquivo:
            conteudo = arquivo.read()
        
        conteudo = '[' + conteudo.replace('\n', ',\n') + ']'
        
        with open(caminho_completo, 'w') as arquivo:
            arquivo.write(conteudo)

arquivos_json = os.listdir(pasta_json)

for nome_arquivo in arquivos_json:
    processar_arquivo_json(nome_arquivo)

print("Arquivos .json configurados e transferidos para a pasta 'JSON/'.")

# Quarto passo: Ler os arquivos JSON e preencher com as informações encontradas na API do TMDB

api_key = ''

def get_tmdb_data_movie(movie_id):
    url = f'https://api.themoviedb.org/3/movie/{movie_id}?api_key={api_key}&language=pt-BR'
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()
    else:
        return None

def get_tmdb_data_serie(serie_id):
    url = f'https://api.themoviedb.org/3/tv/{serie_id}?api_key={api_key}&language=pt-BR'
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()
    else:
        return None

def update_json_file_movie(file_path):
    with open(file_path, 'r') as json_file:
        data = json.load(json_file)

    i = 0
    j = 0
    for entry in data:
        j += 1
        print(f'entrada {j}')
        if entry['tempoMinutos'] is None or entry['notaMedia'] is None or entry['anoLancamento'] is None:
            i+=1
            print(i)
            tmdb_data = get_tmdb_data_movie(entry['id'])
            if tmdb_data:
                if entry['tempoMinutos'] is None:
                    entry['tempoMinutos'] = tmdb_data.get('runtime')

                if entry['notaMedia'] is None:
                    entry['notaMedia'] = tmdb_data.get('vote_average')
                    
                if entry['anoLancamento'] is None:
                    release_date = tmdb_data.get('release_date')
                    if release_date:
                        entry['anoLancamento'] = int(release_date.split('-')[0])

def update_json_file_serie(file_path):
    with open(file_path, 'r') as json_file:
        data = json.load(json_file)

    i = 0
    j = 0
    for entry in data:
        j += 1
        print(f'entrada {j}')
        if entry['tempoMinutos'] is None or entry['notaMedia'] is None or entry['anoLancamento'] is None:
            i+=1
            print(i)
            tmdb_data = get_tmdb_data_serie(entry['id'])
            if tmdb_data:
                if entry['tempoMinutos'] is None:
                    entry['tempoMinutos'] = tmdb_data.get('runtime')

                if entry['notaMedia'] is None:
                    entry['notaMedia'] = tmdb_data.get('vote_average')
                    
                if entry['anoLancamento'] is None:
                    release_date = tmdb_data.get('release_date')
                    if release_date:
                        entry['anoLancamento'] = int(release_date.split('-')[0])

                

    with open(file_path, 'w') as json_file:
        json.dump(data, json_file, indent=2)

pasta_json = 'JSON/'

print("Integrando dados da API nos filmes de comédia.")
for i in range(1, 14):
    print("iniciado a compressão do arquivo %i" %(i))
    filename = os.path.join(pasta_json, f'comedy_movies_{i}.json')
    update_json_file_movie(filename)
    print(f'Arquivo {filename} atualizado.')

print("A integração de dados da API nos filmes de comédia foi concluída.")

print("Integrando dados da API nos filmes de animação.")
print("iniciado a compressão do arquivo %i" %(i))
filename = os.path.join(pasta_json, f'animation_movies_{i}.json')
update_json_file_movie(filename)
print(f'Arquivo {filename} atualizado.')
print("A integração de dados da API nos filmes de animação foi concluída.")

print("Integrando dados da API nas séries de comédia.")
for i in range(1, 10):
    print("iniciado a compressão do arquivo %i" %(i))
    filename = os.path.join(pasta_json, f'comedy_series_{i}.json')
    update_json_file_serie(filename)
    print(f'Arquivo {filename} atualizado.')

print("A integração de dados da API nas séries de comédia foi concluída.")

print("Integrando dados da API nas séries de animação.")
for i in range(1, 10):
    print("iniciado a compressão do arquivo %i" %(i))
    filename = os.path.join(pasta_json, f'animation_series_{i}.json')
    update_json_file_serie(filename)
    print(f'Arquivo {filename} atualizado.')

print("A integração de dados da API nas séries de animação foi concluída.")

# Quinto passo: Organizar e subir os arquivos .json para o S3

def dividir_arquivo_json(arquivo_json, tamanho_lote=100):
    with open(arquivo_json, 'r') as arquivo:
        dados = json.load(arquivo)
    
    lotes = [dados[i:i + tamanho_lote] for i in range(0, len(dados), tamanho_lote)]

    nome_base, extensao = os.path.splitext(arquivo_json)

    for indice, lote in enumerate(lotes):
        novo_nome = f"{nome_base}_{indice + 1}{extensao}"
        with open(novo_nome, 'w') as novo_arquivo:
            json.dump(lote, novo_arquivo, indent=2)

def processar_pasta_json(pasta):
    for arquivo in os.listdir(pasta):
        if arquivo.endswith('.json'):
            arquivo_json = os.path.join(pasta, arquivo)
            dividir_arquivo_json(arquivo_json)

if __name__ == "__main__":
    processar_pasta_json(pasta_json)

os.environ["AWS_ACCESS_KEY_ID"] = 'AKIA3TV6GR4KGACAWIGC'
os.environ["AWS_SECRET_ACCESS_KEY"] = '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'
os.environ["AWS_DEFAULT_REGION"] = 'us-east-1'
bucket_name = 'compass-uol-desafio'
local_folder = 'JSON/' 

s3 = boto3.client(
    's3',
    aws_access_key_id='',
    aws_secret_access_key='',
    region_name='us-east-1'
)

for root, dirs, files in os.walk(local_folder):
    for file in files:
        file_path = os.path.join(root, file)
        s3_object_key = os.path.relpath(file_path, local_folder)

        try:
            s3.upload_file(file_path, bucket_name, s3_object_key)
            print(f'Successfully uploaded {file} to {bucket_name}/{s3_object_key}')
        except Exception as e:
            print(f'Error uploading {file}: {e}')
