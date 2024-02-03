# Estudos em Data & Analytics

Este repositório exibe os exercícios, resumos e certificados de cursos e estudos em Data & Analytics.  Estes exercícios foram realizados no segundo semestre de 2023.

## Exercícios

### Exercícios sobre SQL

#### Caso de Estudo "Biblioteca"

[Exercício 1](Exercicios_SQL/ex1.sql)

[Exercício 2](Exercicios_SQL/ex2.sql)

[Exercício 3](Exercicios_SQL/ex3.sql)

[Exercício 4](Exercicios_SQL/ex4.sql)

[Exercício 5](Exercicios_SQL/ex5.sql)

[Exercício 6](Exercicios_SQL/ex6.sql)

[Exercício 7](Exercicios_SQL/ex7.sql)

#### Caso de Estudo "Loja"

[Exercício 8](Exercicios_SQL/ex8.sql)

[Exercício 9](Exercicios_SQL/ex9.sql)

[Exercício 10](Exercicios_SQL/ex10.sql)

[Exercício 11](Exercicios_SQL/ex11.sql)

[Exercício 12](Exercicios_SQL/ex12.sql)

[Exercício 13](Exercicios_SQL/ex13.sql)

[Exercício 14](Exercicios_SQL/ex14.sql)

[Exercício 15](Exercicios_SQL/ex15.sql)

[Exercício 16](Exercicios_SQL/ex16.sql)

#### Exportação de Dados

[Exportação de Dados 1](Exercicios_SQL/exportacao1.csv)

[Exportação de Dados 2](Exercicios_SQL/exportacao2.csv)

### Exercícios em Python

[Exercício 1](Exercicios_Python/ex1.py)

[Exercício 2](Exercicios_Python/ex2.py)

[Exercício 3](Exercicios_Python/ex3.py)

[Exercício 4](Exercicios_Python/ex4.py)

[Exercício 5](Exercicios_Python/ex5.py)

[Exercício 6](Exercicios_Python/ex6.py)

[Exercício 7](Exercicios_Python/ex7.py)

[Exercício 8](Exercicios_Python/ex8.py)

[Exercício 9](Exercicios_Python/ex9.py)

[Exercício 10](Exercicios_Python/ex10.py)

[Exercício 11](Exercicios_Python/ex11.py)

[Exercício 12](Exercicios_Python/ex12.py)

[Exercício 13](Exercicios_Python/ex13.py)

[Exercício 14](Exercicios_Python/ex14.py)

[Exercício 15](Exercicios_Python/ex15.py)

[Exercício 16](Exercicios_Python/ex16.py)

[Exercício 17](Exercicios_Python/ex17.py)

[Exercício 18](Exercicios_Python/ex18.py)

[Exercício 19](Exercicios_Python/ex19.py)

[Exercício 20](Exercicios_Python/ex20.py)

[Exercício 21](Exercicios_Python/ex21.py)

[Exercício 22](Exercicios_Python/ex22.py)

[Exercício 23](Exercicios_Python/ex23.py)

[Exercício 24](Exercicios_Python/ex24.py)

[Exercício 25](Exercicios_Python/ex25.py)

#### Desafio - ETL com Python

[Etapa 1 - Desafio - ETL com Python](Exercicios_Python/Desafio/etapa-1.txt)

[Etapa 2 - Desafio - ETL com Python](Exercicios_Python/Desafio/etapa-2.txt)

[Etapa 3 - Desafio - ETL com Python](Exercicios_Python/Desafio/etapa-3.txt)

[Etapa 4 - Desafio - ETL com Python](Exercicios_Python/Desafio/etapa-4.txt)

[Etapa 5 - Desafio - ETL com Python](Exercicios_Python/Desafio/etapa-5.txt)

### Exercícios de Programação Funcional em Python e Docker

#### Programação Funcional

[Exercício 1](Exercicios_ProgFunc_Docker/ex1.py)

[Exercício 2](Exercicios_ProgFunc_Docker/ex2.py)

[Exercício 3](Exercicios_ProgFunc_Docker/ex3.py)

[Exercício 4](Exercicios_ProgFunc_Docker/ex4.py)

[Exercício 5](Exercicios_ProgFunc_Docker/ex5.py)

#### Exercício Docker

[Desafio Docker](Exercicios_ProgFunc_Docker/DesafioDocker/)

### Exercícios de Fundamentos de Computação em Nuvem (AWS)

#### Laboratório AWS S3

![Print](Exercicios_AWS/Lab_AWS_S3.png)

#### Laboratório AWS Glue

[Script do Job](Exercicios_AWS/Script_Job.txt)

### Apache Spark

#### Tarefa 1 - Python com Pandas e Numpy

Os códigos foram executados em .ipynb, em um Notebook no Jupyter Notebooks. Os códigos e respostas podem ser acessados [clicando aqui](Exercicios_Spark/Exercício-1.ipynb).

#### Tarefa 2 - Apache Spark - Contador de Palavras

O Exercício solicita que seja criado um container com a imagem jupyter/spark. Este container então deve levantar um notebook Jupyter e executar, utilizando docker exec, um algoritmo no pyspark que leia a quantidade de palavras iguais no README.md deste repositório.
O comando utilizado para criar o container foi:
**sudo docker run -it -p 8888:8888 --name jupyter_001 jupyter/all-spark-notebook**
O log final pode ser visto no documento está disponível logo abaixo:

[Log_Exercício2.txt](Exercicios_Spark/Log_Exercício2.txt)

#### Geração de massa de dados

O Exercício 3 começava com 2 aquecimentos. O primeiro exigia a criação de uma lista com 250 números aleatórios entre 1 a 1000. Após isso, devia se utilizar a função *reverse()* e imprimir a lista. O segundo solicitava a criação de uma lista com 20 animais, a ordenação da mesma em ordem alfabética e sua escrita em um arquivo então se devia imprimir o resultado e salvar em um arquivo csv.

[Warm Up 1 - Script](Exercicio_Spark/Ex_2_WarmUp_1.py)

[Warm Up 2 - Script](Exercicio_Spark/Ex_2_WarmUp_2.py)

[Arquivo CSV gerado](Exercicio_Spark/animais_ord.csv)

O Exercício 3, após o aquecimento, solicitava a instalação da biblioteca *names* , e então a criação de um script em Python que gerasse de forma pseudoaleatória uma lista com um milhão de nomes aleatórios e 3000 nomes únicos. Após a conclusão, o resultado devia ser salvo em um arquivo txt com os nomes. O arquivo e o script estão disponíveis abaixo.

[Notebook utilizado na execução do exercício](Exercicio_Spark/Ex_2.ipynb)

[Arquivo txt gerado](Exercicios_Spark/nomes_aleatorios.zip)

### Exercício 4 - Apache Spark

O exercício 4 envolvia em desenvolver scripts utilizando o txt nomes aleatorios, gerado no Exercício 3. Os scripts criados estão abaixo:

[Parte 1](Exercicios_Spark/Ex4_1.py)

[Parte 2](Exercicios_Spark/Ex4_2.py)

[Parte 3](Exercicios_Spark/Ex4_3.py)

[Parte 4](Exercicios_Spark/Ex4_4.py)

[Parte 5](Exercicios_Spark/Ex4_5.py)

[Parte 6](Exercicios_Spark/Ex4_6.py)

[Parte 7](Exercicios_Spark/Ex4_7.py)

[Parte 8](Exercicios_Spark/Ex4_8.py)

[Parte 9](Exercicios_Spark/Ex4_9.py)

[Parte 10](Exercicios_Spark/Ex4_10.py)

## Desafio

Desenvolver uma análise a sua escolha após refinar dados de filmes e séries encontrados na API do TMDB.

### Etapa I - ETL

O script em Python para subir os arquivos movies.csv e series.csv pode ser acessado [aqui](Desafio/Script.py).

O [Dockerfile](Dockerfile) do container.

![Print dos arquivos CSV no S3](Desafio/Desafio.png)

### Etapa II - Ingestão de Dados do TMDB

A parte 2 do Desafio pode ser dividida em 5 partes:

1. Ler os dados de movies.csv e series.csv e salvá-los em JSON com no máximo 10 MB de tamanho
2. Tratar os dados dos arquivos json gerados
3. Preencher os dados 'NULL' dos arquivos com informações coletadas usando a API do TMDB
4. Salvar os arquivos atualizados em JSON, com 100 registros cada, no S3

A conclusão dos primeiros quatro passos está disponível no seguinte script: [Script do Desafio](Desafio/Desafio-2.py).

### Etapa III - Processamento da Trusted

Nesta etapa, seria necessário criar um script que pudesse se conectar a API, ler os arquivos .json gerados e preencher com os dados que faltam. Porém, esta etapa foi feita na parte anterior, o que acelerou o desenvolvimento nesta. Na parte 1, foi desenvolvido um script em Python chamado [ScriptJsonToParquet](Desafio/ScriptJsonToParquet.py) que converteu os arquivos com 100 registros .json para o formato .parquet. Após isso, foi criado um script em Python chamado [ScriptSubirS3](Desafio/ScriptSubirS3.py) que subiu os arquivos para o S3 na pasta 'desafio/'. Após isso, se utilizou um segundo script Python chamado [ScriptMoverParquet](Desafio/ScriptMoverParquet.py) para mover os arquivos .parquet para uma subpasta chamada 'trusted/'.

### Etapa IV - Apresentação do Dashboard

No dia 02 de novembro de 2023, assisti o vídeo [O Fim da Disney](https://www.youtube.com/watch?v=JAg7OQq9vpA) do canal [IMPERA](https://www.youtube.com/@RenatoIMPERA), onde ele comenta sobre a história da Disney, sua ascensão e declínio. O vídeo me impressionou muito por sua qualidade técnica e por toda a busca que foi feita, o que acabou me despertando a curiosidade de pesquisar mais e analisar sobre a influência da Disney no mercado de animações. As perguntas que eu me propus a responder foram:

1. Após o primeiro filme de animação da Disney (Branca de Neve), qual foi a reação do mercado de animações em termos de produções?
2. Como foi a recepção pública dos filmes em animação em comparação com os outros gêneros de filmes?
3. As outras empresas de filmes já produziam filmes animados?
4. A Disney influenciou o mercado de filmes de animações? Como?

Após definir as perguntas e questionamentos, foi iniciado a coleta de dados necessários para o desenvolvimento do Dashboard. O primeiro passo foi criar uma coluna "produtora", para receber as informações das produtoras de filmes e séries de comédia e animação. Após isso, tratar estes dados e prepará-los para a análise. Para fazer isso, conectei a API do TMDB com o arquivo [movies.csv](https://desafio.s3.amazonaws.com/raw/movies.csv), presente na minha raw mandei criar uma nova coluna chamada 'produtora' e inserir os dados das produtoras de todos os filmes e salvei o arquivo em minha trusted, junto dos arquivos atualizados dos meus Jsons. Após isto, excluí as informações desnecessárias do csv e mandei atualizar meus arquivos Json com os dados dos filmes de animação e criei arquivos em .parquet a partir destes .json. Salvei estes resultados na minha refined. 
Para atualizar o csv, foram usados os scripts presentes nesta pasta. O arquivo [1FiltrarDados.py](Desafio/1FiltrarDados.py) filtra os dados desejados, que são os filmes de animação, do arquivo movies.csv, o script [2RemoverColuna.py](Desafio/2RemoverColuna.py) remove as colunas que não serão usadas no restante do processo, enquanto o script [3RemoveLinhas.py](Desafio/3RemoveLinhas.py) remove as linhas duplicadas presentes no arquivo. Após isto, o script [4insereProdutora](Desafio/4insereProdutora) cria uma nova coluna 'produtora'. Por fim, o script [5insereDadosGerais](Desafio/5insereDadosGerais) insere os dados buscados pela API no nosso arquivo csv. Após renomear o arquivo e apagar os arquivos intermediários, o resultado final é o arquivo [animation_movies.csv](Desafio/animation_movies.csv), que após ser convertido para [animation_movies.xlsx](Desafio/animation_movies.xlsx) foi utilizado no desenvolvimento do [Dashboard](Desafio/Dashboard.pdf) no AWS Quicksight.

## Resumos de Cursos

Foram desenvolvidos resumos sobre o estudado em cada curso, e estão disponíveis para acesso em Notion.so. No arquivo "Resumos.txt" está anexado o link, e os links  dos resumos dos cursos estão disponíveis aqui também:

[Resumo do curso de Git](https://gabrielwillye.notion.site/gabrielwillye/Comandos-Git-7f64ad1cb110467bb12d9ffc79396d9a)

[Resumo do curso de Linux](https://gabrielwillye.notion.site/gabrielwillye/Comandos-Linux-1f45ebb40fdc47b49a16f798aa6bfd04)

[Resumo do curso de Metodologia Ágil](https://gabrielwillye.notion.site/gabrielwillye/Metodologias-geis-45da3933fdcd43d79e5915fc6fb57228)

[Portfolio do Curso de Git](Resumos/PrintPortfolio.png)

[Resumo do curso de SQL para Análise de Dados](https://gabrielwillye.notion.site/SQL-para-An-lise-de-Dados-c3292e791c4c422a85b7be54c7c4f1b6?pvs=4)

[Resumo do curso de Big Data](https://gabrielwillye.notion.site/Fundamentos-de-Big-Data-79a06f2c95214628a5e1a884cb6ce161?pvs=4)

[Caderno de Códigos](evidencias/Notas%20Do%20Curso.ipynb)

[Link do resumo do curso de Docker](https://gabrielwillye.notion.site/Docker-4beb4a3cf3374fa99f6cd06bcee3531c?pvs=4)

[Link do resumo do curso de Estatística Descritiva com Python](https://gabrielwillye.notion.site/Estat-stica-Descritiva-com-Python-ee1d1dae1abe4696bb1473b55a75aaad?pvs=4)

[Caderno de Exercícios - Curso de Estatistica](Resumos/Estatistica.ipynb)

[Resumo do curso de AWS Partner: Sales Accreditation](https://gabrielwillye.notion.site/AWS-Sales-Accreditation-498f1ef430a3482ab7c039a0b80d4f28?pvs=4)

[Resumo do curso de AWS Kinesis Analytics](Resumos/AmazonKinesisAnalytics.md)

[Resumo do curso de AWS Partner: Data Analytics on AWS - Business](Resumos/DataAnalytics.md)

[Resumo do curso Amazon Kinesis Streams](Resumos/AmazonKinesisStreams.md)

[Resumo do curso Amazon Elastic MapReduce](Resumos/AmazonEMR.md)

[Resumo do curso Amazon Athena](Resumos/AmazonAthena.md)

[Resumo do curso AWS IoT Analytics](Resumos/IoTAnalytics.md)

[Resumo do curso Getting Started with Amazon Redshift](Resumos/AmazonRedshift.md)

[Resumo do curso Why Analytics for Games](Resumos/AnalyticsGames.md)

[Resumo do curso de Hadoop](Resumos/Hadoop.md)

[Resumo do curso Formação Spark com Pyspark](Resumos/Spark.md)

## Certificados

![Certificado do curso de Git](Certificados/Git.jpg)

![Certificado do curso de Linux](Certificados/Linux.jpg)

![Certificado do curso de Metodologia Agil](Certificados/MetodologiaAgil.jpg)

![Certificado do curso de SQL para Análise de Dados](Certificados/SQL.jpg)

![Certificado do curso de Fundamentos em Big Data](Certificados/BigData.png)

![Certificado do curso de Python3](Certificados/Python3.jpg)

![Certificado do curso de Python3](Certificados/EstDescPy.jpg)

![Certificado do curso de Docker](Certificados/Docker.jpg)

![Selo do curso de AWS Partner: Sales Accreditation](Certificados/Sales.png)

![Certificado do curso de AWS Cloud Quest: Cloud Practitioner](Certificados/CloudQuest.png)

![Certificado do curso de AWS Partner: Accreditation](Certificados/Accreditation.png)

![Selo do curso de AWS Partner: Cloud Economics Accreditation](Certificados/SeloCloud.png)

![Certificado do curso Exam Prep: AWS Certified Cloud Practitioner](Certificados/ExamPrep.png)

![Certificado de conclusão do curso de Amazon Kinesis Analytics](Certificados/KinesisAnalytics.png)

![Certificado de conclusão do curso de AWS Partner: Data Analytics on AWS - Business](Certificados/DataAnalytics.png)

![Certificado de conclusão do curso de AWS Partner: Data Analytics Fundamentals](Certificados/DataAnalyticsFundamentals.png)

![Certificado de conclusão do curso Amazon Kinesis Streams](Certificados/AmazonKinesisStreams.png)

![Certificado de conclusão do curso Amazon Elastic MapReduce](Certificados/AmazonEMR.png)

![Certificado de conclusão do curso Amazon Athena](Certificados/AmazonAthena.png)

![Certificado de conclusão do curso Amazon Quicksight](Certificados/AmazonQuicksight.png)

![Certificado de conclusão do curso AWS IoT Analytics](Certificados/IoTAnalytics.png)

![Certificado de conclusão do curso Getting Started with Amazon Redshift](Certificados/AmazonRedshift.png)

![Certificado de conclusão do curso Deep Dive into Concepts and Tools for Analyzing Streaming Data](Certificados/DeepDive.png)

![Certificado de conclusão do curso Best Practices for Data Warehousing with Amazon Redshift](Certificados/DataWarehousing.png)

![Certificado de conclusão do curso Serverless Analytics](Certificados/ServerlessAnalytics.png)

![Certificado de conclusão do curso Why Analytics for Games](Certificados/AnalyticsGames.png)

![Learn by Example: Hadoop, Map Reduce for Big Data problems](Certificados/Hadoop.png)

![Formação Spark com Pyspark: O Curso Completo](Certificados/Spark.png)

![Quicksight](Certificados/Quicksight.jpg)

![Segurança em Aplicações Web](Certificados/SegApliWeb.jpg)
