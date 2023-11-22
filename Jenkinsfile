pipeline {

        parameters {
            // The space ID that we will be working with. The default space is typically Spaces-1.
            string(defaultValue: 'Spaces-1', description: '', name: 'SpaceId', trim: true)
            // The Octopus project we will be deploying.
            string(defaultValue: 'RandomQuotes', description: '', name: 'ProjectName', trim: true)
            // The environment we will be deploying to.
            string(defaultValue: 'Dev', description: '', name: 'EnvironmentName', trim: true)
            // The name of the Octopus instance in Jenkins that we will be working with. This is set in:
            // Manage Jenkins -> Configure System -> Octopus Deploy Plugin
            string(defaultValue: 'Octopus', description: '', name: 'ServerId', trim: true)
        }

        agent any

        options {
            parallelsAlwaysFailFast()
        }

        environment {

            PROMPT_VALUE = ""
        }

        stages {

            stage ('S1 3114394F') {
                steps {
                    sh "echo Stage1_3114394F : Release Environment Preparation Completed"
                }
            }

            stage ('S2 3114394F'){
                steps {
                    sh "echo Stage2_3114394F : Release Container WebApp_3114394F Created Completed"
                }
            }


            stage ('S3 3114394F (Parallel)') {
                parallel {
                    stage ('S3 3114394F API Test') {
                        steps {
                            sh "echo Stage3_3114394F : API Test Completed"
                        }
                    }
                    stage ('S3 3114394F Scan Test') {
                        steps {
                            sh "echo Stage3_3114394F : Scan Test Completed"
                        }
                    }
                }
            }

            

            stage ('S4 3114394F'){
                steps {
                    script {
                        def PROMPT_VALUE = input(id: 'PROMPT_VALUE' , message: "3114394F, proceed to release the work to next phase?")

                        println(PROMPT_VALUE)
                    }
                    
                }
            }

            stage ('S5 3114394F'){
                steps {
                     sh "echo ${env.PROMPT_VALUE}"
                }
            }
        }


}