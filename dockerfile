stage('Docker Build & Push') {
    steps {
        script {
            sh 'docker build -t Shivani505/sampleapp:latest .'
            sh 'echo Vicky@1024 | docker login -u Shivani505 --password-stdin'
            sh 'docker push Shivani505/sampleapp:latest'
        }
    }
}
