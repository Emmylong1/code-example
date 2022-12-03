node {
        dev app

        stage('clone repository') {
                checkout scm 

        }
       
        stage('Build image') {
                app = docker.build('emmylong1/example-app')
        }

        stage('push image') {
                docker.withRegistry('https://registry.hub.docker.com'. 'docker-hub-credentials') {
                        app.push('latest')
       
                }                 

                post {
                        always {
                          junit skipPublishingChecks:true,testResults:
                '*/cpputest_xml'
                        }
                           
                }
             
                
                
                }
         
        }
        
        
}
