# Desafio

O desafio teve início na Sprint 7 e está sendo desenvolvido até o presente momento.

## Parte I - ETL

O script em Python para subir os arquivos movies.csv e series.csv pode ser acessado [aqui](Desafio/etapa-1/Script.py).

O [Dockerfile](Desafio/etapa-1/Dockerfile) do container.

![Print dos arquivos CSV no S3](Desafio/etapa-1/Desafio.png)

## Parte II - Ingestão de Dados do TMDB

A parte 2 do Desafio pode ser dividida em 5 partes:

1. Ler os dados de movies.csv e series.csv e salvá-los em JSON com no máximo 10 MB de tamanho
2. Tratar os dados dos arquivos json gerados
3. Preencher os dados 'NULL' dos arquivos com informações coletadas usando a API do TMDB
4. Salvar os arquivos atualizados em JSON, com 100 registros cada, no S3
5. Transformar esta função em uma camada do AWS Lambda

A conclusão dos primeiros quatro passos está disponível no seguinte notebook: [Notebook do Desafio](etapa-2/Desafio-2.ipynb).
A conclusão do último passo pode ser averiguada [neste print](etapa-2/print_Lambda.png).
