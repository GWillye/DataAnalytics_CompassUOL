from pyspark.sql import SparkSession

from pyspark.sql.functions import when, lit, rand

spark = SparkSession \

    .builder \

    .master("local[*]") \

    .appName("Ex4") \

    .getOrCreate()

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

df_nomes.printSchema()

df_nomes.show(10, truncate=False)

