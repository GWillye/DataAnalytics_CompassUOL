'''
Escreva um programa que lê o conteúdo do arquivo texto arquivo_texto.txt e imprime o seu conteúdo.
Dica: leia a documentação da função open(...)
'''

with open('arquivo_texto.txt') as arquivo:
    total_linhas = arquivo.readlines() 
    
    for linha in total_linhas:
        if linha == total_linhas[-1]:
            print(linha.strip(), end='')
        else:
            print(linha.strip())
