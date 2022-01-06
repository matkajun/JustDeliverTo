
pipeline {
    agent any 

    stages { 
        stage("Push New Realese") {
            steps { 
            checkout([$class: 'GitSCM', branches: [[name: '*/*']], extensions: [], userRemoteConfigs: [[credentialsId: '060ee98d-0ef5-4ef9-b81a-dc8cfd687575', url: 'git@github.com:matkajun/JustDeliverTo.git']]])
               

               sh 'echo "hello"'
		sh 'ls'


        
}


            }
        }
    }
