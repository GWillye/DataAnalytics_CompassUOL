# Amazon Kinesis Streams

## O que é o Amazon Kinesis Streams

O **Amazon Kinesis Stream Services** é uma ferramenta da AWS para coletar, processar e analisar dados de transmissão (streaming) em tempo real, permitindo a criação de aplicações que ingerem dados, geram insights a partir destes dados e reagem a eles, tudo em tempo real. O Kinesis Streams lê e grava dados de/para transmissões. O Kinesis Producer Library e o Kinesis CLient Library são disponibilizados pela AWS para ajudar a tornar mais fácil a gravação dessas aplicações.
Para se usar o Amazon Kinesis Streams:

1. Cria-se um stream (transmissão) e se especifica o número de fragmentos;
2. Cada fragmento é uma unidade de leitura e gravação.

Aquilo que coloca informações no Kinesis é chamado de produtor. Pode ser uma instância do Amazon EC2, um cliente móvel, um servidor local ou um dispositivo com IoT. O que recebe informações, no lado downstream, é chamado de consumidor, podendo ser uma aplicação em execução em uma instância do Amazon EC2 ou uma função do AWS Lambda.
Essa sequência fica salva no Stream por 24 horas, mas pode ser estendida para sete dias, o que faz com que talvez seja necessário gravar esses dados em uma instância de armazenamento permanente como o Amazon C3.

O Kinesis Streams também permite preservar a solicitação dos clientes de seus dados, consumir dados em paralelo e desacoplar a coleta e processamento de seus dados.

FIFO: O Amazon Kinesis Streams recebe dados de produtores diferentes e o ordena por ordem de recebimento, o que recebe o nome de **FIFO** , o primeiro método de organização e buffer de dados.
Consumo paralelo: É possível consumir várias aplicações do Kinesis Streams de uma só vez, assim permitindo que múltiplos usuários trabalhem com os mesmos dados para criar e oferecer suporte a várias aplicações.

## Comandos

**aws put-record --stream-name nome_da_aplicacao_no_kinesis --partition-key "int_numero_ID_do_fragmento" --data "dados"** - Inserir dados em um fragmento no Kinesis Streams
**aws kinesis describe-stream --stream-name nome_da_aplicacao_no_kinesis** - Descrição da aplicação no Kinesis

### Amazon Kinesis Data Simulator: Gera dados simulados para a aplicação
