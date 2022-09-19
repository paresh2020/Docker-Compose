pipeline {
    agent any
    stages
        {
         

            stage('Clone Reposirory')
            {
                steps
                {
                checkout scm
                }
            }
            stage('Backup Database')
            {
                steps
                {
                sh 'backup.sh'
                }
            }
            stage('Build Image')
            {
                steps
                {
                sh 'sudo docker-compose build'
                }
            }
            stage('stop Image')
            {
                steps
                {
                sh 'sudo docker-compose stop'
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
