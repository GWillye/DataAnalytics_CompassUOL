from pyspark.sql import SparkSession

from pyspark.sql.functions import col

spark = SparkSession.builder.master("local[*]").appName("Ex4").getOrCreate()

millennials_count = df_nomes.filter(df_nomes.AnoNascimento.between(1980, 1994)).count()

print("Número de Millennials no Dataset:", millennials_count)

