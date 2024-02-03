'''
Dada a seguinte lista:
a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
Faça um programa que gere uma nova lista contendo apenas números ímpares.

'''

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
impar = []


contador = 0
cont = 0
while (cont < 9):
    if (a[cont] % 2 != 0):
        impar.append(a[cont])
        contador += 1
    cont += 1

print(impar)
