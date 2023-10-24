# Introduction to Amazon Elastic MapReduce (EMR)

O Amazon Elastic MapReduce (EMR) é um serviço que permite facilmente executar e dimensionar clusters do Hadoop no ambiente da AWS, possuindo integração com muitos serviços importantes da AWS. Isso permite a resolução de diversos problemas de Big Data que seriam impossíveis sem esta integração.

## Overview

O projeto Apache Hadoop usa uma arquitetura de processamento distribuído em que uma tarefa é mapeada para um cluster de servidores convencionais para processamento. O Hadoop une a computação e o armazenamento e os dimensiona juntos utilizando nós.
O Hadoop pode processar dados estruturados, não estruturados e semiestruturados.
*O Amazon EMR é um serviço que permite criar e gerenciar clusters do Hadoop, baseado em computação em nuvem elástica ou instâncias do EC2.*
O Amazon EMR permite executar aplicações como:

* MapReduce
* Hive
* Pig
* Hbase
* Spark
* Impala
* Presto
* Flink

E outras aplicações baseadas em uma das estruturas compatíveis.
O Serviço EMR também estende a pilha do Hadoop com EMRFS. Ele é um sistema de arquivos parecido com o HDFS para aplicações e permite que elas processem dados diretamente do S3, Dynamo DB, Kinesis ou Redshift.

[Clique neste link para ver a imagem](https://www.notion.so/gabrielwillye/AWS-Technologies-589f70bd300e434ba3d9754580cf515f?pvs=4#d596fe7e02154696819fd48500befb5e)

O nó principal serve como ponto de eixo no cluster, para usuários finais. É esse nó que executa o serviço do nó "name" do Hadoop. As tarefas podem ser executadas em nós core ou nós de tarefa, mas apenas nós core podem hospedar e dar acesso ao HDFS.

## Benefícios do EMR

* Fácil de usar, seja para fazer migração de dados on premises para a nuvem ou para outras funcionalidades. Não possui necessidade de provisionar manualmente, configurar ou ajustar os clusters no Hadoop, o que pode ser muito complexo.
* O custo é muito baixo, porque **se paga pelo uso**, e pode-se optar por clusters transitórios com EMRFS e armazenamento persistente fornecidos por outros serviços da AWS, como S3 ou Dynamo DB. É possível também aproveitar os preços spot.
* **Elasticidade:** Há seções do cluster que podem ser executadas com segurança usando o Spark. Além disso, pode-se facilmente dimensionar a computação e o armazenamento.
* **Segurança:** Oferece recursos de segurança dentro de uma VPC, como isolamento de rede, grupos de segurança, e, além disso, os dados em repouso podem ter sua criptografia escolhida no servidor ou no cliente, gerenciamento de suas próprias chaves ou usar um serviço de gerenciamento de chaves.
* **Reliable:** O EMR monitora, identifica e substitui instâncias que não se comportam bem.
