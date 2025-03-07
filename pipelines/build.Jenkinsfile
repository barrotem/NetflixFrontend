// pipelines/build.Jenkinsfile

pipeline {
    agent {
        label 'general' //dummy commit-3
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