node {

    try {
        stage 'Checkout'
            checkout scm

           

        stage 'Installing dependencies'
            sh './dependencies.sh'
            


        
    }

    catch (err) {
        
        throw err
    }

}
