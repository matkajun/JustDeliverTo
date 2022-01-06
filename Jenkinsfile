
pipeline {
    agent any 

    stages { 
        stage("Pull") {
            steps { 
            checkout([$class: 'GitSCM', branches: [[name: '$branch_name']], extensions: [], userRemoteConfigs: [[credentialsId: '060ee98d-0ef5-4ef9-b81a-dc8cfd687575', url: 'git@github.com:matkajun/JustDeliverTo.git']]])
               

               sh 'echo "hello"'
		sh 'ls'



        
}


            }
            stage("zipped"){
            	steps {
            sh '''
            	apt  install jq -y
            	x=`jq .build_job_id build.json`
		zip build_website_${x}.zip build.json hta.png main.html
		ls 
		'''


            }	
            }
            
        }
    }
