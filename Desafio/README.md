# Desafio

O desafio teve início na Sprint 7 e está sendo desenvolvido até o presente momento.

## Parte I - ETL

O script em Python para subir os arquivos movies.csv e series.csv pode ser acessado [aqui](Desafio/etapa-1/Script.py).

O [Dockerfile](etapa-1/Dockerfile) do container.

![Print dos arquivos CSV no S3](etapa-1/Desafio.png)

## Parte II - Ingestão de Dados do TMDB

A parte 2 do Desafio pode ser dividida em 5 partes:

1. Ler os dados de movies.csv e series.csv e salvá-los em JSON com no máximo 10 MB de tamanho
2. Tratar os dados dos arquivos json gerados
3. Preencher os dados 'NULL' dos arquivos com informações coletadas usando a API do TMDB
4. Salvar os arquivos atualizados em JSON, com 100 registros cada, no S3
5. Transformar esta função em uma camada do AWS Lambda

A conclusão dos primeiros quatro passos está disponível no seguinte script: [Script do Desafio](etapa-2/Desafio-2.py).
Não consegui estar concluindo o último passo.

## Parte III - Processamento da Trusted e Refined

### Parte 1 - Processamento da Trusted
Nesta etapa, seria necessário criar um script que pudesse se conectar a API, ler os arquivos .json gerados e preencher com os dados que faltam. Porém, esta etapa foi feita na parte anterior, o que acelerou o desenvolvimento nesta. Na parte 1, foi desenvolvido um script em Python chamado [ScriptJsonToParquet](etapa-3/ScriptJsonToParquet.py) que converteu os arquivos com 100 registros .json para o formato .parquet. Após isso, foi criado um script em Python chamado [ScriptSubirS3](etapa-3/ScriptSubirS3.py) que subiu os arquivos para o S3 na pasta 'compass-uol-desafio/'. Após isso, se utilizou um segundo script Python chamado [ScriptMoverParquet](etapa-3/ScriptMoverParquet.py) para mover os arquivos .parquet para uma subpasta chamada 'trusted/'.

### Parte 2 - Modelagem de dados da Refined

Nesta etapa, criou-se um modelo dimensional para a Refined, organizando os dados das tabelas movies.csv e series.csv. O modelo dimensional está disponível no formato SQL no arquivo [modeloDimensional.sql](etapa-3/modeloDimensional.sql).
O Script para execução deste modelo e criação do Dataframe da Refined foi executado no AWS Glue, mas sem sucesso até o presente momento.

### Parte 3 - Processamento da Refined

Para conseguir criar arquivos correspondentes aos dados desejados como tabelas na Refined, após definir o modelo, foram executados 3 jobs no AWS Glue para filtrar os dados da Trusted e os salvar em arquivos .parquet com todos os dados desejados.

- Para criar a tabela DimAtor foi utilizado o Job [DimAtor.py](etapa-3/DimAtor.py);
- Para criar a tabela DimObra foi utilizado o Job [DimObra.py](etapa-3/DimObra.py);
- Para criar a tabela FatosPersonagem foi utilizado o Job [FatosPersonagem.py](etapa-3/FatosPersonagem.py);
