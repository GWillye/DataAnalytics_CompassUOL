# Why Analytics For Games?

## Casos de negócio em análises de dados

O Flywheel analítico para jogos é um ciclo entre *mais dados -> melhor design -> melhor experiência -> usuários mais engajados*, com o resultado de aumento da receita do jogo. Os diversos modelos de monetização de um jogo exemplificam o modelo de negócios adotado pela empresa. O antigo modelo de criar um jogo e em seguida iniciar um novo projeto está entrando em desuso, visto que hoje o ambiente está muito mais competitivo, e bons jogos que não possuem uma rentabilidade e estabilidade consistente ficam para trás. A qualidade das análises e informações também afeta em muito a qualidade do jogo e o seu desempenho no mercado. Em resumo, a análise de dados segue o padrão de coleta de dados -> análise e obtenção de insights -> atualizar o design do jogo. Caso não se tenha um plano de coleta de dados, algumas desvantagens previsíveis são: desvantagem competitiva, perda de jogadores e confiança em conjecturar ou opiniões.

## Identificação dos dados mensurados

**Dados do usuário:** Análise do cliente, dados sociais ou da comunidade e dados de jogabilidade;
**Dados de performance:** Tempo de espera e atrasos, performance e latência da rede, logs de aplicações e relatórios de bugs.
*Telemetria:* termo usado para descrever a representação bruta dos dados de origem gerados pelos sistemas. Geralmente inclui os conjuntos de dados exclusivos de seu jogo e seus principais mecanismos.
**Fontes de dados:** Clientes de jogos, servidores de jogos e serviços de back-end.
**Métricas relevantes:** Daily Active Users (DAU – Usuários Ativos Diariamente); Monthly Active Users (MAU – Usuários Ativos Mensalmente)

[Diferença entre processamento de dados em lote vs processamento de dados em streams](https://www.notion.so/gabrielwillye/AWS-Technologies-589f70bd300e434ba3d9754580cf515f?pvs=4#f2b54368d0f54a34ba8654865da1b499)

**Métricas comuns de jogo:** Monetização, Relatório de performance de erros, investigações de fraude/jogadores e jogabilidade.

## Compreensão dos tipos de dados

Existem três tipos de dados: estruturados (tabelas e documentos lineares), não estruturados (Imagens,áudios, vídeos) e semiestruturados (JSON)

## Estágios de um pipeline de análise

**> Telemetria de dados -> Pipeline de análise -> Métricas -**
Um pipeline de análise ingere dados de telemetria das suas aplicações e sistemas para promover insights dos negócios. Os consumidores desses dados podem exigir insights em velocidades diferentes (lote versus tempo real), portanto, o design do pipeline deve ser flexível para contemplar os dois cenários.
**Pipeline de análise:** Ingestão, Armazenamento, Processamento/análise e Consumo.

### Fatores a se considerar ao desenvolver o pipeline

* **Latência:** representa quanto tempo você está disposto a esperar entre o momento em que os dados brutos são ingeridos até serem retornados como resposta. Para reduzir a latência, em geral você aumenta o custo.
* **Taxa de transferência:** mede a quantidade agregada de dados que o sistema pode ingerir, representando uma das medições mais importantes de escalabilidade. Ao decidir a quantidade de taxa de transferência necessária para seu sistema, considere o tamanho e a escalabilidade do seu jogo, além do volume de dados que você deseja ingerir. Aumentar a taxa de transferência de um pipeline costuma elevar o custo.
* **Custo:** avalie o custo de um pipeline de análise em relação ao valor esperado das respostas geradas.

### Possíveis desafios

* Identificar os requisitos dos recursos
* Avaliar a sobrecarga operacional
* Considerar o orçamento
* Identificar lacunas de habilidades e compensar com treinamento
