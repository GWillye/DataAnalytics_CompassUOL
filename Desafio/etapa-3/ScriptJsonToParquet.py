import os
import pandas as pd

input_directory = 'JSON'
output_directory = 'Parquet'

os.makedirs(output_directory, exist_ok=True)

json_files = [f for f in os.listdir(input_directory) if f.endswith('.json')]

for json_file in json_files:
    json_file_path = os.path.join(input_directory, json_file)

    parquet_file = os.path.splitext(json_file)[0] + '.parquet'
    parquet_file_path = os.path.join(output_directory, parquet_file)

    df = pd.read_json(json_file_path)
    df.to_parquet(parquet_file_path, engine='pyarrow', index=False)
    print(f'Arquivo JSON "{json_file}" convertido para Parquet.')

print('Conversão concluída.')
