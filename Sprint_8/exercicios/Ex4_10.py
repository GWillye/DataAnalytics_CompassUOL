from pyspark.sql import SparkSession

from pyspark.sql.functions import when, lit, rand

spark = SparkSession.builder.master("local[*]").appName("Ex4").getOrCreate()

df_nomes = spark.read.csv('nomes_aleatorios.txt', header=False)

df_nomes = df_nomes.withColumnRenamed('_c0', 'Nomes')

df_nomes = df_nomes.withColumn('Pais',

    when(rand() < 1/13, lit('Argentina'))

    .when(rand() < 2/13, lit('Bolívia'))

    .when(rand() < 3/13, lit('Venezuela'))

    .when(rand() < 4/13, lit('Chile'))

    .when(rand() < 5/13, lit('Colômbia'))

    .when(rand() < 6/13, lit('Equador'))

    .when(rand() < 7/13, lit('Guiana'))

    .when(rand() < 8/13, lit('Paraguai'))

    .when(rand() < 9/13, lit('Peru'))

    .when(rand() < 10/13, lit('Suriname'))

    .when(rand() < 11/13, lit('Uruguai'))

    .otherwise(lit('Brasil'))

)

df_nomes = df_nomes.withColumn('AnoNascimento', (1945 + (rand() * 66)).cast('int'))

baby_boomers_condition = (df_nomes.AnoNascimento >= 1944) & (df_nomes.AnoNascimento <= 1964)

geracao_x_condition = (df_nomes.AnoNascimento >= 1965) & (df_nomes.AnoNascimento <= 1979)

millennials_condition = (df_nomes.AnoNascimento >= 1980) & (df_nomes.AnoNascimento <= 1994)

df_nomes = df_nomes.withColumn('Geração',

    when(baby_boomers_condition, lit('Baby Boomers'))

    .when(geracao_x_condition, lit('Geração X'))

    .when(millennials_condition, lit('Millennials'))

    .otherwise(lit('Outra'))

)

df_resultado = df_nomes.groupby('Pais', 'Geração').count()

df_resultado = df_resultado.orderBy('Pais', 'Geração', 'count')

df_resultado.show(df_resultado.count(), truncate=False)

