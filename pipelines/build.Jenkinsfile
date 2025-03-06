// pipelines/build.Jenkinsfile

pipeline {
    agent {
        label 'general'
    }

    triggers {
        githubPush()
    }

    stages {
        stage('Build app container') {
            steps {
                sh '''
                    docker build -t netflix-front .
                '''
            }
        }
    }
}