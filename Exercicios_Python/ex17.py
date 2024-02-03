'''
Escreva uma função que recebe como parâmetro uma lista e retorna 3 listas: a lista recebida dividida em 3 partes iguais. 
Teste sua implementação com a lista abaixo:
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
'''

def divide_lista(lista):
    tamanho = len(lista)
    tamanho_parte = tamanho // 3
    partes = [lista[i:i+tamanho_parte] for i in range(0, tamanho, tamanho_parte)]
    return partes

lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
partes_divididas = divide_lista(lista)
for parte in partes_divididas:
    if parte == partes_divididas[-1]:
        print(parte)
    else:
        print(parte, end=' ')

