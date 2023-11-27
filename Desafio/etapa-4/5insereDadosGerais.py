import os
import json
import requests
import pandas as pd

api_key = 'f905807b2900febaccfb008c16388168'

# Função para buscar dados da API do TMDB
def get_tmdb_data(movie_id):
    url = f'https://api.themoviedb.org/3/movie/{movie_id}?api_key={api_key}&language=pt-BR'
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()
    else:
        return None

def update_csv_file(file_path):
    df = pd.read_csv(file_path)
    
    for index, row in df.iterrows():
        if pd.isnull(row['tempoMinutos']) or pd.isnull(row['notaMedia']) or pd.isnull(row['anoLancamento']):
            tmdb_data = get_tmdb_data(row['id'])
            if tmdb_data:
                if pd.isnull(row['tempoMinutos']):
                    df.at[index, 'tempoMinutos'] = tmdb_data.get('runtime')

                if pd.isnull(row['notaMedia']):
                    df.at[index, 'notaMedia'] = tmdb_data.get('vote_average')

                if pd.isnull(row['anoLancamento']):
                    release_date = tmdb_data.get('release_date')
                    if release_date:
                        df.at[index, 'anoLancamento'] = int(release_date.split('-')[0])

                production_companies = tmdb_data.get('production_companies')
                if production_companies:
                    producer_name = production_companies[0].get('name')
                    df.at[index, 'produtora'] = producer_name

    # Salvar o DataFrame resultante em um novo arquivo CSV
    df.to_csv('animation_movies_finalizados.csv', index=False)


print("Script iniciado.")

filename = os.path.join('animation_movies_limpos.csv')
update_csv_file(filename)
print(f'Arquivo atualizado.')
