#!/bin/bash

virtualenv venv -p python3.6
source venv/bin/activate
pip install awscli
pip install django
pip install boto3
pip install requests
