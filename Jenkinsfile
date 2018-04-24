node {

    try {
        stage 'Checkout'
            checkout scm

           

        stage 'Installing dependencies'
            sh './dependencies.sh'

	    
	stage 'running server'

           sh '${env.WORKSPACE}/venv/bin/python3.4 nohup python ./manage.py runserver ec2-35-161-109-195.us-west-2.compute.amazonaws.com:8000 > /dev/null 2>&1 &'           


        
    }

    catch (err) {
        
        throw err
    }

}
