#!/bin/bash
set +x
virtualenv venv -p python3.6
source venv/bin/activate
pip install awscli
pip install django
pip install boto3
pip install requests

echo "dependencies are installed"

