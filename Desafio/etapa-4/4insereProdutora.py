import pandas as pd

def add_pipe_to_end(input_file):

    df = pd.read_csv(input_file)
    df = df.apply(lambda x: x.astype(str) + '|')
    df.to_csv(input_file, index=False)

    print(f"Concluido")

add_pipe_to_end('animation_movies_limpos.csv')
