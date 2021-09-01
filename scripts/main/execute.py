import glue_script as gs
import json
import os
import sys

from pyspark.context import SparkContext
from awsglue.context import GlueContext

print('INIT COMMON EXECUTE FILE')

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
print('GLUE CONTEXT LOADED...')

print('LOCAL ARGUMENTS...')
custom_args = json.load(open('local_argument_list.json','r'))

print(f'ARGS: {custom_args}')

gs.job_start(spark, custom_args)

