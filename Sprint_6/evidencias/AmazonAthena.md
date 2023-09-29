# Amazon Athena

## Service Introduction

Athena é serverless (não utiliza servidor), assim sendo, só é necessário receber dados do Amazon S3, definir o esquema e começar a consultar os dados utilizando um editor de consultas incorporado. Athena também não necessita de processos de ETL para processar os dados.
No Amazon Athena, você paga apenas pelas consultas executadas, sendo possível economizar de 30% a 90% dos custos por consulta e obter melhor performance. Além disso, o Amazon Athena não faz cobranças adicionais de armazenamento, visto que usa dados armazenados no S3.
Amazon Athena faz uso do Presto compatível com ANSI SQL e funciona com muitas variedades de formato de dadsos, como CSV, JSON, ORC, Avro e Parquet.
O Amazon Athena executa automaticamente as consultas em paralelo, retornando a maioria dos resultados em segundos.
Algumas consultas são mais rápidas caso os dados estejam armazenados em coluna como em Parquet.

## Overview: How to Use Amazon Athena

1. Create an S3 bucket and object
2. Create a metadata database
3. Create a schema
4. (Optional) FIne-tune the Serializer/Deserializer (Serde)
5. Run the Query
6. (Optional) Access the History
