from pyspark.sql import SparkSession

from pyspark import SparkContext, SQLContext

spark = SparkSession.builder.appName("Ex4").getOrCreate()

df_nomes = spark.read.csv("nomes_aleatorios.txt", header=False, inferSchema=True, sep='\t')

df_nomes.show(5)

