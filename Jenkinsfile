node {

    try {
        stage 'Checkout'
            checkout scm

           

        stage 'Installing dependencies'
            sh 'virtualenv venv -p python3.5'
            sh '. venv/bin/activate'
            sh 'venv/bin/pip install -r requirements.txt'
            sh 'venv/bin/python3.5 BUILD_ID=dontKillMe nohup python manage.py runserver ec2-35-161-109-195.us-west-2.compute.amazonaws.com:8000 &'


        
    }

    catch (err) {
        
        throw err
    }

}
