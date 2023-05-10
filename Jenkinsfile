pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: '715ea8e8-2cff-4c10-b45a-6ff6bbe71fd2', url: 'https://github.com/merajalikhan/jenkins-terraform-test.git'
            }
        }
        stage('Terraform Initialize') {
            steps {
                //sh 'terraform init'
                print('terraform init...')
            }
        }
        stage('Terraform Plan') {
            steps {
                //sh 'terraform init'
                print('terraform plan....')
            }
        }
        stage('Terraform Apply') {
            steps {
                //sh 'terraform apply --auto-approve'
                print ('terraform apply...')
            }
        }
        
    }
    post {
			always {
				echo 'One way or another, I have finished'
				deleteDir() /* clean up our workspace */
			}
			success {
				echo 'I succeeded!'
			}
			unstable {
				echo 'I am unstable :/'
			}
			failure {
				echo 'I failed :('
			}
			changed {
				echo 'Things were different before...'
				
			}
		}
}
