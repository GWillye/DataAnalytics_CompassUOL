import pandas as pd

dtype = {
    'id': str,
    'tituloPincipal': str,
    'tituloOriginal': str,
    'anoLancamento': int,
    'tempoMinutos': int,
    'genero': str,
    'notaMedia': float,
    'numeroVotos': int,
    'generoArtista': str,
    'personagem': str,
    'nomeArtista': str,
    'anoNascimento': str,
    'anoFalecimento': str,
    'profissao': str,
    'titulosMaisConhecidos': str,
}

movies_df = pd.read_csv('movies.csv', delimiter='|', na_values=['null'])

max_lines_per_file = 25000

print("Leitura concluída")
movies_df['genero'].fillna('NULL', inplace=True)
animation_movies_df = movies_df[movies_df['genero'].str.contains('Animation')]

animation_movies_df = animation_movies_df.replace(r'\n', 'NULL', regex=True)

chunks = [animation_movies_df[i:i + max_lines_per_file] for i in range(0, len(animation_movies_df), max_lines_per_file)]

for i, chunk in enumerate(chunks, start=1):
    filename = f'animation_movies_{i}.csv'
    chunk.to_csv(filename, index=False, sep='|')
    print(f'Saved {filename}')

print("Concluído")
