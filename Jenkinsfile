
pipeline {
    agent any 
  environment {
AWS_DEFAULT_REGION = 'us-east-2'


  }


    stages { 


            stage("Package"){
            	steps {
                checkout([$class: 'GitSCM', branches: [[name: '$branch_name']], extensions: [], userRemoteConfigs: [[credentialsId: '060ee98d-0ef5-4ef9-b81a-dc8cfd687575', url: 'git@github.com:matkajun/JustDeliverTo.git']]])

        sh '''
            cd /home/ron981/Desktop/JustDeliverT/app/flask-app
        x=`jq .build_job_id build.json`
		zip -r build_website_${x}.zip build.json templates app.py 
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
                    cd /home/ron981/Desktop/JustDeliverT/app/flask-app
                    x=`jq .build_job_id build.json`
                    aws s3 cp build_website_${x}.zip s3://justdeliver/
                

                  '''

                }

            }

            }
        }
        }
}
