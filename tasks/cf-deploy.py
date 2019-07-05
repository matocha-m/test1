#!/usr/local/bin/python

import yaml
import os
import json
import subprocess

env_variables = os.environ['environment_variables']
print(env_variables)


d = json.loads(env_variables)
for key in d:
    print("key: {}, value: {}".format(key, d[key]))
path = os.environ['CF_PATH']
manifest = ''
with open(os.environ['MANIFEST_FILE'], 'r') as stream:
    try:
        manifest = yaml.safe_load(stream)
        print(yaml.safe_load(stream))
    except yaml.YAMLError as exc:
        print(exc)

manifest['applications'][0]['path'] = path
manifest['applications'][0]['env'] = d
print(manifest)
with open('./manifest-output.yml', 'w') as stream:
    try:
        yaml.dump(manifest, stream)
    except yaml.YAMLError as exc:
        print(exc)

subprocess.run(['cat' , './manifest-output.yml'], check=True)
subprocess.run(['cat' , './manifest-output2.yml'], check=True)