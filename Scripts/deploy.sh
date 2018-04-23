#!/bin/bash

virtualenv venv -p python3.6
source venv/bin/activate
BUILD_ID=dontKillMe nohup python manage.py runserver ec2-35-161-109-195.us-west-2.compute.amazonaws.com:8000 &
echo "ending program"
