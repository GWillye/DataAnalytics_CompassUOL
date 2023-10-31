from pyspark.sql import SparkSession

from pyspark import SparkContext, SQLContext

from pyspark.sql.functions import when, lit, rand

spark = SparkSession \

    .builder \

    .master("local[*]") \

    .appName("Ex4") \

    .getOrCreate()

df_nomes = spark.read.csv('nomes_aleatorios.txt', header=False)

df_nomes = df_nomes.withColumnRenamed('_c0', 'Nomes')

df_nomes = df_nomes.withColumn('Escolaridade', when(rand() < 0.33, lit('Fundamental'))

                                       .when(rand() < 0.66, lit('Médio'))

                                       .otherwise(lit('Superior')))

df_nomes.printSchema()

df_nomes.show(10)

