'''
Criar novo script Python que implementa o algoritmo a seguir:
1 - Receber uma string via input
2 - Gerar o hash  da string por meio do algoritmo SHA-1
3 - Imprimir o hash em tela, utilizando o método hexdigest
4 - Retornar ao passo 1
''' 

import hashlib

while(True):
    string = input("Digite a string: ")

    sha1 = hashlib.sha1()
    sha1.update(string.encode('utf-8'))
    hash_hexadecimal = sha1.hexdigest()
    print("Hash SHA-1:", hash_hexadecimal)
