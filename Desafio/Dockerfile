# Use uma imagem base do Python
FROM python:3

# Crie um diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos CSV para o diretório de trabalho
COPY movies.csv /app/movies.csv
COPY series.csv /app/series.csv

# Instale as bibliotecas Python necessárias
RUN pip install pandas boto3

# Copie o seu script Python para o diretório de trabalho
COPY Script.py /app/Script.py

# Comando a ser executado quando o contêiner for iniciado
CMD ["python", "Script.py"]
