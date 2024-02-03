# Amazon Redshift

## Introdução ao Amazon Redshift

O **Amazon Redshift** é um data warehouse em colunas, em nuvem e totalmente gerenciado. Pode ser usado para executar consultas analíticas complexas de grandes conjuntos de dados por meio da tecnologia de processamento massivamente paralelo (MPP). Ele também também monitora cargas de trabalho de usuários e usa machine learning (ML) para descobrir maneiras de aprimorar o layout físico de dados para otimizar a velocidade das consultas.

### Quais problemas o Amazon Redshift se propõe solucionar?

Ele é uma solução eficiente para lidar com o desafio de coletar, armazenar e analisar dados estruturados ou semi-estruturados. Pode-se ver tendências históricas e obter novas informações em tempo real, assim como executar analytics preditivas em conjuntos de dados, mesmo que sejam de terceiros, desde que se tenha permissão para acesso. É um serviço totalmente gerenciado.

### Benefícios do Amazon Redshift

* **Gerenciamento de carga de trabalho:** Ajuda o usuário a gerenciar com flexibilidade suas prioridades de carga de trabalho para que consultas curtas e rápidas não fiquem presas na fila atrás de consultas que demoram para ser executadas.
* **Editor de consultas v2:** Usa a Linguagem de consulta estruturada (SQL) para tornar seus dados e data lake mais acessíveis para analistas, engenheiros e outros usuários de SQL com um workbench baseado na web para análise e exploração de dados.
* **Design de tabela automatizado:** Monitora as cargas de trabalho do usuário e usa algoritmos sofisticados para encontrar maneiras de melhorar o layout físico dos dados para otimizar a velocidade das consultas.
* **Consultas com suas próprias ferramentas:** Aumenta a flexibilidade para executar consultas no console ou conectar às ferramentas do cliente SQL, bibliotecas ou ferramentas de ciência de dados, como o Amazon QuickSight, Tableau, Microsoft Power BI, Querybook e Jupyter Notebook.
* **Simples interação com API:** Fornece acesso a dados com diferentes tipos de aplicações tradicionais, nativos da nuvem, conteinerizados, sem servidor e baseados em serviços web e aplicações orientadas por eventos.
* **Tolerante a falhas:** Ajuda a aprimorar a confiabilidade do cluster de data warehouse com recursos como monitoramento contínuo da health do cluster e replicação automática de dados a partir de unidades com falhas, além de substituição de nó conforme for necessário.

* **Analytics rápidas para todos:** Pode-se concentrar em transformar dados em informações e entregar resultados comerciais sem se preocupar em gerenciar o data warehouse;
* **Análise dos dados do usuário:** Pode-se executar analytics em dados complexos e dimensionáveis dos bancos de daods operacionais, data lakes, data warehouse e outros conjuntos de dados de terceiros, utilizando o Amazon Redshift, Amazon Redshift Spectrum ou integração com o AWS Data Exchange ou o AMazon Redshift ML para criar, treinar e aplicar modelos de Machine Learning com SQL padrão.
* **Conectividade:** O Redshift oferece flexibilidade para consultas diretamente no console da solução. Isso é feito usando o Editor de consultas v2, que é um workbench baseado na web para exploração, análise e criação de gráficos de dados. O Amazon Redshift também fornece drivers de conectividade de banco de dados Java (JDBC) e Conectividade de banco de dados aberto (ODBC) para se conectar aos seguintes: Ferramentas clientes SQL, bibliotecas e servidores de extrair, transformar e carregar (ETL) e business intelligence (BI), e; Ferramentas de ciência de dados como Power BI, Tableau, Looker, Informatica, Querybook e Jupyter Notebook.
* **Suporte para formatos abertos:**  Pode-se consultar de forma mais direta no Amazon S3 usando o SQL familiar do American National Standards Institute (ANSI), ou fazendo consultas de formatos de arquivo abertos, como Parquet, Colunar de linha otimizada (ORC), JavaScript Object Notation (JSON), Avro ou Valores separados por vírgula (CSV).
    *Para exportar dados para o seu data lake, use o comando UNLOAD do Amazon Redshift no seu código SQL e especifique Parquet como o formato do arquivo. O Amazon Redshift gerencia automaticamente a formatação e movimentação de dados no Amazon S3. Para armazenar dados JSON no seu data warehouse, use o tipo de dados Amazon Redshift SUPER.*
* **Desempenho em qualquer dimensionamento:** O Amazon Redshift oferece desempenho para consultas rápidas em conjuntos de dados que vão de gigabytes a petabytes. Armazenamento colunar, compactação de dados e mapas de zonas reduzem a quantidade necessária de E/S para executar as consultas. Além de codificações padrão na indústria, como LZO e Zstandard, o Amazon Redshift oferece codificação de compactação para fins específicos, AZ64, para tipos numéricos e de data/horário. Essa codificação foi desenvolvida para oferecer economia de armazenamento e desempenho de consulta otimizado.
* **Seguro e em conformidade:** A AWS tem funcionalidades abrangentes de segurança para atender aos mais exigentes requisitos e o Amazon Redshift fornece segurança de dados pronta para uso sem custo adicional. Com as configurações de parâmetros, o Amazon Redshift pode ser configurado para usar Secure Sockets Layer (SSL) para proteger dados em trânsito, e criptografia Advanced Encryption Standard (AES)-256 para dados em repouso. Pode-se configurar as definições do firewall e controlar o acesso da rede ao seu cluster de data warehouse.

### Qual o preço do Amazon Redshift?

* [Calculadora](https://calculator.aws/#/addService/Redshift)
* [Saiba mais](https://aws.amazon.com/redshift/pricing/)
