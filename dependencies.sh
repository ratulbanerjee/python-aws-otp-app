#!/bin/bash
set +x
virtualenv venv -p python3.6
source venv/bin/activate
pip install awscli
pip install django
pip install boto3
pip install requests
nohup python manage.py runserver ec2-35-161-109-195.us-west-2.compute.amazonaws.com:8000 > /dev/null 2>&1 &
echo "ending program"

