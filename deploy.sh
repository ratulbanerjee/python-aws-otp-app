#!/bin/bash
set +x
source venv/bin/activate
nohup python ./manage.py runserver ec2-35-161-109-195.us-west-2.compute.amazonaws.com:8000 > /dev/null 2>&1 &
echo "ending program"

