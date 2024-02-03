import os
import json
import requests

def get_tmdb_data(movie_id):
    api_key = 'f905807b2900febaccfb008c16388168'
    url = f'https://api.themoviedb.org/3/movie/{movie_id}?api_key={api_key}&language=pt-BR'
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()
    else:
        return None

def get_produtora(movie_id):
    tmdb_data = get_tmdb_data(movie_id)
    if tmdb_data and 'production_companies' in tmdb_data:
        produtoras = tmdb_data['production_companies']
        if produtoras:
            for produtora in produtoras:
                if 'name' in produtora:
                    return produtora['name']
    return None

def processar_arquivo_json(caminho_arquivo):
    try:
        with open(caminho_arquivo, 'r') as arquivo:
            dados = json.load(arquivo)

            # Adiciona a coluna 'produtora' com valor null a cada registro
            for registro in dados:
                if registro['produtora'] is None:
                    registro['produtora'] = get_produtora(registro['id'])

            # Salva as alterações de volta no arquivo
            with open(caminho_arquivo, 'w') as arquivo:
                json.dump(dados, arquivo, indent=2)
                
            print(f"Sucesso: Coluna 'produtora' atualizada em {caminho_arquivo}")
    except Exception as e:
        print(f"Erro ao processar {caminho_arquivo}: {e}")

def main():
    pasta_json = 'JSON/'

    for arquivo in os.listdir(pasta_json):
        if arquivo.endswith('.json'):
            caminho_arquivo = os.path.join(pasta_json, arquivo)
            processar_arquivo_json(caminho_arquivo)

    print("Processamento concluído com sucesso.")

if __name__ == "__main__":
    main()
