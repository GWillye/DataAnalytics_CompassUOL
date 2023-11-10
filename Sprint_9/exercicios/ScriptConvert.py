import sqlite3
import csv

sqlite_file = 'concessionaria.sqlite'
output_file = 'concessionaria.txt'

conn = sqlite3.connect(sqlite_file)
cursor = conn.cursor()

cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
tables = cursor.fetchall()

with open(output_file, 'w', encoding='utf-8') as f:
    for table in tables:
        table_name = table[0]
        f.write(f"=== Tabela: {table_name} ===\n")

        cursor.execute(f"SELECT * FROM {table_name};")
        data = cursor.fetchall()

        column_names = [description[0] for description in cursor.description]
        f.write(','.join(column_names) + '\n')
        for row in data:
            f.write(','.join(str(cell) for cell in row) + '\n')

conn.close()

print(f'Os dados foram exportados para {output_file}')

input_file = 'concessionaria.txt'
output_file = 'concessionaria.csv'

with open(input_file, 'r', encoding='utf-8') as txt_file:
    # Leia o conteúdo do arquivo de texto
    txt_data = txt_file.read()

lines = txt_data.split('\n')

header = lines[0].split(',')
with open(output_file, 'w', newline='', encoding='utf-8') as csv_file:
    csv_writer = csv.writer(csv_file)
    csv_writer.writerow(header)
    for line in lines[1:]:
        values = line.split(',')

        csv_writer.writerow(values)

print(f'O arquivo foi convertido para {output_file}')
