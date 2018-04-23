node {

    try {
        stage 'Checkout'
            checkout scm

            

        stage 'Test'
            sh 'virtualenv venv -p python3.6'
            sh '. venv/bin/activate'
            sh 'venv/bin/pip install -r requirements.txt'
            sh 'venv/bin/python3.6 manage.py 

        stage 'Deploy'
            sh './deployment/deploy_prod.sh'

        stage 'Publish results'
            slackSend color: "good", message: "Build successful: `${env.JOB_NAME}#${env.BUILD_NUMBER}` <${env.BUILD_URL}|Open in Jenkins>"
    }

    catch (err) {
        slackSend color: "danger", message: "Build failed :face_with_head_bandage: \n`${env.JOB_NAME}#${env.BUILD_NUMBER}` <${env.BUILD_URL}|Open in Jenkins>"

        throw err
    }

}
