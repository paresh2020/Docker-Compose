pipeline {
    agent any
    stages
        {
             stage('Backup Database')
            {
                steps
                {
                sh '/home/pp/Desktop/docker-compose-project/backup.sh'
                }
            }
             stage('stop Image')
            {
                steps
                {
                sh 'sudo docker-compose stop'
                }
            }
            stage('Clone Reposirory')
            {
                steps
                {
                checkout scm
                }
            }
            stage('Build Image')
            {
                steps
                {
                sh 'sudo docker-compose build'
                }
            }
            stage('Run Image')
            {
                steps
                {
                sh 'sudo docker-compose up -d'
                }
            }
            stage('Test Image')
            {
                steps
                {
                sh 'echo "hi"'
                }
            }
        }
}
