#!/usr/local/bin/python

import yaml
import os
import json

env_variables = os.environ['environment_variables']
print(env_variables)


d = json.loads(env_variables)
for key in d:
    print("key: {}, value: {}".format(key, d[key]))

with open(os.environ['MANIFEST_FILE'], 'r') as stream:
    try:
        print(yaml.safe_load(stream))
    except yaml.YAMLError as exc:
        print(exc)