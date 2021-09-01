from pyspark.sql import SparkSession
from typing import NoReturn


def demo_processing(spark: SparkSession, args: dict) -> NoReturn:
    df = spark.createDataFrame([("foo", 1), ("bar", 2), ("baz", 3)], ('k', 'v'))
    df.show(n=2)
    # df.write.parquet("s3a://glue/teste.parquet", mode="overwrite")
    print("end glue job")

def job_start(spark: SparkSession, args: dict) -> NoReturn:
    """
    The main Glue Job function
    """
    print('START JOB')
    print(f"Args: {args}")
    
    try:
        demo_processing(spark, args)

    except Exception as err:
        print(err)
        raise err
