from pyspark.sql import SparkSession

from pyspark.sql.functions import when, lit, rand

spark = SparkSession \

    .builder \

    .master("local[*]") \

    .appName("Ex4") \

    .getOrCreate()

df_nomes = spark.read.csv('nomes_aleatorios.txt', header=False)

df_nomes = df_nomes.withColumnRenamed('_c0', 'Nomes')

df_nomes = df_nomes.withColumn('AnoNascimento', (1945 + (rand() * 66)).cast('int'))

df_nomes.printSchema()

df_nomes.show(10, truncate=False)

