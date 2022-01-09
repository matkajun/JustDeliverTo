
pipeline {
    agent any 
  environment {
AWS_DEFAULT_REGION = 'us-east-2'


  }


    stages { 

        stage("Pull") {
            steps { 
            checkout([$class: 'GitSCM', branches: [[name: '$branch_name']], extensions: [], userRemoteConfigs: [[credentialsId: '060ee98d-0ef5-4ef9-b81a-dc8cfd687575', url: 'git@github.com:matkajun/JustDeliverTo.git']]])
               

               sh 'echo "hello"'
		



        
}


            }
            stage("Package"){
            	steps {
            sh '''
            	ls
            	x=`jq .build_job_id build.json`
		zip build_website_${x}.zip build.json hta.png main.html
		ls 
		'''


            }	
            }


            stage("Publish"){
                steps{
                      script {
    withCredentials([[
        $class: 'AmazonWebServicesCredentialsBinding', 
        accessKeyVariable: 'AWS_ACCESS_KEY_ID', 
        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
        credentialsId: 'ron'
    ]]) {

    
                    sh '''
                x=`jq .build_job_id build.json`
                aws s3 cp build_website_${x}.zip s3://justdeliver/
                

                    '''

                }

            }

            }
        }
        }
}
