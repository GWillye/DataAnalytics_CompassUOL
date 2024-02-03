# Desafio

Desenvolver uma análise a sua escolha após refinar dados de filmes e séries encontrados na API do TMDB.

## Etapa I - ETL

O script em Python para subir os arquivos movies.csv e series.csv pode ser acessado [aqui](Desafio/Script.py).

O [Dockerfile](Dockerfile) do container.

![Print dos arquivos CSV no S3](Desafio.png)

## Etapa II - Ingestão de Dados do TMDB

A parte 2 do Desafio pode ser dividida em 5 partes:

1. Ler os dados de movies.csv e series.csv e salvá-los em JSON com no máximo 10 MB de tamanho
2. Tratar os dados dos arquivos json gerados
3. Preencher os dados 'NULL' dos arquivos com informações coletadas usando a API do TMDB
4. Salvar os arquivos atualizados em JSON, com 100 registros cada, no S3

A conclusão dos primeiros quatro passos está disponível no seguinte script: [Script do Desafio](Desafio-2.py).

## Etapa III - Processamento da Trusted

Nesta etapa, seria necessário criar um script que pudesse se conectar a API, ler os arquivos .json gerados e preencher com os dados que faltam. Porém, esta etapa foi feita na parte anterior, o que acelerou o desenvolvimento nesta. Na parte 1, foi desenvolvido um script em Python chamado [ScriptJsonToParquet](ScriptJsonToParquet.py) que converteu os arquivos com 100 registros .json para o formato .parquet. Após isso, foi criado um script em Python chamado [ScriptSubirS3](ScriptSubirS3.py) que subiu os arquivos para o S3 na pasta 'desafio/'. Após isso, se utilizou um segundo script Python chamado [ScriptMoverParquet](ScriptMoverParquet.py) para mover os arquivos .parquet para uma subpasta chamada 'trusted/'.

### Etapa IV - Apresentação do Dashboard

No dia 02 de novembro de 2023, assisti o vídeo [O Fim da Disney](https://www.youtube.com/watch?v=JAg7OQq9vpA) do canal [IMPERA](https://www.youtube.com/@RenatoIMPERA), onde ele comenta sobre a história da Disney, sua ascensão e declínio. O vídeo me impressionou muito por sua qualidade técnica e por toda a busca que foi feita, o que acabou me despertando a curiosidade de pesquisar mais e analisar sobre a influência da Disney no mercado de animações. As perguntas que eu me propus a responder foram:

1. Após o primeiro filme de animação da Disney (Branca de Neve), qual foi a reação do mercado de animações em termos de produções?
2. Como foi a recepção pública dos filmes em animação em comparação com os outros gêneros de filmes?
3. As outras empresas de filmes já produziam filmes animados?
4. A Disney influenciou o mercado de filmes de animações? Como?

Após definir as perguntas e questionamentos, foi iniciado a coleta de dados necessários para o desenvolvimento do Dashboard. O primeiro passo foi criar uma coluna "produtora", para receber as informações das produtoras de filmes e séries de comédia e animação. Após isso, tratar estes dados e prepará-los para a análise. Para fazer isso, conectei a API do TMDB com o arquivo [movies.csv](https://desafio.s3.amazonaws.com/raw/movies.csv), presente na minha [raw](https://desafio.s3.amazonaws.com/raw/) mandei criar uma nova coluna chamada 'produtora' e inserir os dados das produtoras de todos os filmes e salvei o arquivo em minha [trusted](https://desafio.s3.amazonaws.com/trusted/), junto dos arquivos atualizados dos meus Jsons. Após isto, excluí as informações desnecessárias do csv e mandei atualizar meus arquivos Json com os dados dos filmes de animação e criei arquivos em .parquet a partir destes .json. Salvei estes resultados na minha [refined](https://desafio.s3.amazonaws.com/trusted/). 
Para atualizar o csv, foram usados os scripts presentes nesta pasta. O arquivo [1FiltrarDados.py](1FiltrarDados.py) filtra os dados desejados, que são os filmes de animação, do arquivo movies.csv, o script [2RemoverColuna.py](2RemoverColuna.py) remove as colunas que não serão usadas no restante do processo, enquanto o script [3RemoveLinhas.py](3RemoveLinhas.py) remove as linhas duplicadas presentes no arquivo. Após isto, o script [4insereProdutora](4insereProdutora) cria uma nova coluna 'produtora'. Por fim, o script [5insereDadosGerais](5insereDadosGerais) insere os dados buscados pela API no nosso arquivo csv. Após renomear o arquivo e apagar os arquivos intermediários, o resultado final é o arquivo [animation_movies.csv](animation_movies.csv), que após ser convertido para [animation_movies.xlsx](animation_movies.xlsx) foi utilizado no desenvolvimento do [Dashboard](Dashboard.pdf) no AWS Quicksight.
