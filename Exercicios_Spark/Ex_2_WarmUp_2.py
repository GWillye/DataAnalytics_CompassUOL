nomes_animais = [
    "Kiwi", "Sabiá", "Foca", "Harpia", "Iguana",
    "Jaguatirica", "Barata", "Escorpião", "Onça Pintada", "Tarântula",
    "Gorila", "Quati", "Narceja", "Rato-toupeira-pelado", "Dragão de Komodo",
    "Coruja", "Morsa", "Arara Canindé", "Libélula-de-anéis-dourados", "Peixe Bolha"
]

nomes_animais.sort()

print("\n".join(nomes_animais))


with open("animais_ord.csv", "w") as arquivo:
    for animal in nomes_animais:
        arquivo.write(animal + "\n")
        print("Escrita em andamento")

print("Escrita concluída")