# Job utilizado para criar a Tabela de Dimensões DimAtor

import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job
from awsglue import DynamicFrame


def sparkSqlQuery(glueContext, query, mapping, transformation_ctx) -> DynamicFrame:
    for alias, frame in mapping.items():
        frame.toDF().createOrReplaceTempView(alias)
    result = spark.sql(query)
    return DynamicFrame.fromDF(result, glueContext, transformation_ctx)


args = getResolvedOptions(sys.argv, ["JOB_NAME"])
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args["JOB_NAME"], args)

# Script generated for node Trusted
Trusted_node1699646804669 = glueContext.create_dynamic_frame.from_options(
    format_options={},
    connection_type="s3",
    format="parquet",
    connection_options={
        "paths": ["s3://compass-uol-desafio/trusted/"],
        "recurse": True,
    },
    transformation_ctx="Trusted_node1699646804669",
)

# Script generated for node Ver Modelo
SqlQuery0 = """
SELECT
    id,
    tituloPincipal,
    tituloOriginal,
    anoLancamento,
    tempoMinutos,
    genero,
    notaMedia,
    numeroVotos
FROM
    myDataSource;


"""
VerModelo_node1699646529919 = sparkSqlQuery(
    glueContext,
    query=SqlQuery0,
    mapping={"myDataSource": Trusted_node1699646804669},
    transformation_ctx="VerModelo_node1699646529919",
)

job.commit()
