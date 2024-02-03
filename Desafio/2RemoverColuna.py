import pandas as pd

def tratar_csv(input_csv, output_csv):
    colunas_desejadas = ['id', 'tituloPincipal', 'tituloOriginal', 'genero',
                         'anoLancamento', 'tempoMinutos', 'notaMedia', 'numeroVotos']

    dados_originais = pd.read_csv(input_csv, delimiter='|', usecols=colunas_desejadas)
    dados_originais.to_csv(output_csv, index=False, sep='|')

if __name__ == "__main__":
    arquivo_entrada = 'animation_movies_1.csv'
    arquivo_saida = 'animation_movies_atualizados.csv'

    tratar_csv(arquivo_entrada, arquivo_saida)
