'''
Calcule o valor mínimo, valor máximo, valor médio e a mediana da lista gerada na célula abaixo:
Obs.: Lembrem-se, para calcular a mediana a lista deve estar ordenada!

import random 
# amostra aleatoriamente 50 números do intervalo 0...500
random_list = random.sample(range(500),50)

Use as variáveis abaixo para representar cada operação matemática
mediana
media
valor_minimo 
valor_maximo 
'''

import random

random_list = random.sample(range(500), 50)
random_list.sort()

mediana = (random_list[25] + random_list[24]) / 2

total = sum(random_list)
media = total / 50

valor_minimo = random_list[0]
valor_maximo = random_list[-1]

print("Media: %.2f, Mediana: %.1f, Mínimo: %i, Máximo: %i" % (media, mediana, valor_minimo, valor_maximo))