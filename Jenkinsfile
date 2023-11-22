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
                    
                    catchError(buildResult: 'SUCCESS', stageResult: 'ABORTED') {
                        input(id: 'userInput', message: '3114349F, proceed to release the work to next phase?')
                    }
                }
                
                post {
                    success {
                        script{
                            env.RELEASE_OUTCOME = true
                        }
                    }

                    aborted {
                        script {
                            env.RELEASE_OUTCOME = false
                        }
                    }
                }
            }


            //https://stackoverflow.com/questions/69811869/getting-null-as-value-from-input-step-method-in-case-of-abort-button-click-ins
            //https://www.jenkins.io/doc/book/pipeline/syntax/#post

            stage ('S5 3114394F'){
                steps {
                    script {
                        if (env.RELEASE_OUTCOME == true) {
                            echo "${env.RELEASE_OUTCOME}"
                        } else if (env.RELEASE_OUTCOME == false) {
                            echo "${env.RELEASE_OUTCOME}"
                        }
                    }
                }
            }



        }


}