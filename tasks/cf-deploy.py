#!/usr/local/bin/python

import yaml
import os

env_variables = os.environ['environment_variables']
print(env_variables)

with open("example.yaml", 'r') as stream:
    try:
        print(yaml.safe_load(stream))
    except yaml.YAMLError as exc:
        print(exc)