'''
Um determinado sistema escolar exporta a grade de notas dos estudantes em formato CSV. 
Cada linha do arquivo corresponde ao nome do estudante, acompanhado de 5 notas de avaliação, no intervalo [0-10]. 
É o arquivo estudantes.csv de seu exercício.
Precisamos processar seu conteúdo, de modo a gerar como saída um relatório em formato textual contendo as seguintes informações:
Nome do estudante
Três maiores notas, em ordem decrescente
Média das três maiores notas, com duas casas decimais de precisão

O resultado do processamento deve ser escrito na saída padrão (print), ordenado pelo nome do estudante e obedecendo ao formato descrito a seguir:
Nome: <nome estudante> Notas: [n1, n2, n3] Média: <média>
Exemplo:
Nome: Maria Luiza Correia Notas: [7, 5, 5] Média: 5.67
Nome: Maria Mendes Notas: [7, 3, 3] Média: 4.33

Em seu desenvolvimento você deverá utilizar lambdas e as seguintes funções:
round - map - sorted
'''

import csv

def ler_arquivo_csv(nome_arquivo):
    dados = []
    dados_ordenados = []
    resultado = []
    
    with open(nome_arquivo, 'r') as arquivo:
        leitor = csv.reader(arquivo)
        
        for linha in leitor:
            dados.append((linha[0], [int(valor) for valor in linha[1:]]))

        dados = sorted(dados, key=lambda x: x[0])
        
        for nome, valores in dados:
            dados_ordenados.append((nome, sorted(valores, reverse=True)[:3], sum(sorted(valores, reverse=True)[:3]) / 3))
            
        for nome, valores, media in dados_ordenados:
            if media % 1 == 0:
                media= f"{media:.1f}"
            else:
                media= f"{media:.2f}"
            
            resultado.append(f"Nome: {nome} Notas: {valores} Média: {media}")
    
    return resultado

exibicao = ler_arquivo_csv('estudantes.csv')
for linha in exibicao:
    print(linha)