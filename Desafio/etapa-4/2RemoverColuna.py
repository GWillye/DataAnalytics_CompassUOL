import pandas as pd

def tratar_csv(input_csv, output_csv):
    
    colunas_desejadas = ['id', 'tituloPincipal', 'tituloOriginal', 'genero', 'produtora',
                         'anoLancamento', 'tempoMinutos', 'notaMedia', 'numeroVotos']

    dados_originais = pd.read_csv(input_csv, delimiter='|')
    dados_tratados = dados_originais[colunas_desejadas]
    dados_tratados.to_csv(output_csv, index=False, sep='|')

if __name__ == "__main__":
    arquivo_entrada = 'animation_movies_.csv'
    arquivo_saida = 'animation_movies_atualizados.csv'

    tratar_csv(arquivo_entrada, arquivo_saida)
