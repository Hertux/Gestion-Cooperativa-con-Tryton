import redis
import shutil
from glob import glob
import tinys3
import uuid

import boto3
import os
r = redis.StrictRedis(host="193.235.147.12", db=5, decode_responses=True)

session = boto3.Session(
    aws_access_key_id='AKIAINN3EKTSL4VGIRIQ',
    aws_secret_access_key='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',
    region_name='eu-west-2'
)
s3 = session.resource('s3')
bucket = s3.Bucket('nolagcdn')


print(">> Connected to Redis.")

print(">> Getting all folders..")
dirs = glob("/home/mc_*")
print(dirs)

for x in dirs:
    name = x.replace("mc_", "")
    print(">> Starting backup of {}.zip..".format(name))
    shutil.make_archive(name, 'zip', x)
    print(">> Backed up {}.zip".format(name))
    name = name.replace("/home/", "")
    f = open('/home/{}.zip'.format(name),'rb')
    random_name = uuid.uuid4()
    r.set("{}".format(name), random_name)
    print(str(random_name)+" => "+name)
    bucket.put_object(Key="{}.zip".format(random_name), Body=f)