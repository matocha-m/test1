#!/usr/local/bin/python

# import yaml
import os
import json

env_variables = os.environ['environment_variables']
print(env_variables)


d = json.loads(env_variables)
print (d['SPRING_CLOUD_CONFIG_USERNAME'])

# with open("example.yaml", 'r') as stream:
#     try:
#         print(yaml.safe_load(stream))
#     except yaml.YAMLError as exc:
#         print(exc)