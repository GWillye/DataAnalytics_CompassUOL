import pandas as pd

def add_produtora_column(input_file, output_file):

    df = pd.read_csv(input_file, delimiter='|')
    df['produtora'] = 'NomeDaProdutora'
    df.to_csv(output_file, index=False, sep='|')

    print(f"Coluna 'produtora' adicionada. Resultado salvo em {output_file}")

add_produtora_column('animation_movies_limpos.csv', 'animation_movies_produtora.csv')
