pipeline {

        agent any

        options {
            parallelsAlwaysFailFast()
        }

        stages {

            stage ('S1 3114394F') {
                steps {
                    echo "Stage1_3114394F : Release Environment Preparation Completed"
                }
            }

            stage ('S2 3114394F'){
                steps {
                    echo "Stage2_3114394F : Release Container WebApp_3114394F Created Completed"
                }
            }


            stage ('S3 3114394F (Parallel)') {
                parallel {
                    stage ('S3 3114394F API Test') {
                        steps {
                            echo "Stage3_3114394F : API Test Completed"
                        }
                    }
                    stage ('S3 3114394F Scan Test') {
                        steps {
                            echo "Stage3_3114394F : Scan Test Completed"
                        }
                    }
                }
            }

            

            stage ('S4 3114394F'){
                steps {
                        input(id: 'userInput', message: 'Merge to?')
                }
                
                post {
                    success {

                        script{
                            env.RELEASE_OUTCOME = true
                            
                        }
                        echo "${env.RELEASE_OUTCOME} in success block"
                    }

                    aborted {
                        script {
                            env.RELEASE_OUTCOME = false
                            
                        }
                        echo "${env.RELEASE_OUTCOME} in aborted block"
                    }
                }
            }


            //https://stackoverflow.com/questions/69811869/getting-null-as-value-from-input-step-method-in-case-of-abort-button-click-ins
            //https://www.jenkins.io/doc/book/pipeline/syntax/#post

            stage ('S5 3114394F'){
                steps {
                     echo "${env.RELEASE_OUTCOME}"
                }
            }
        }


}