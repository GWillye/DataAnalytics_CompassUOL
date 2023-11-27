import pandas as pd

def remove_duplicates(input_file, output_file):

    df = pd.read_csv(input_file, delimiter='|')
    df_no_duplicates = df.drop_duplicates()
    df_no_duplicates.to_csv(output_file, index=False, sep='|')

    print(f"Linhas duplicadas removidas. Resultado salvo em {output_file}")

remove_duplicates('animation_movies_atualizados.csv', 'animation_movies_limpos.csv')
