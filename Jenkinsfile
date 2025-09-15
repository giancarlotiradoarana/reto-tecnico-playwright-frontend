pipeline {
    agent any
    tools {
        nodejs 'NodeJS'
    }
    parameters {
        choice(name: 'ENV', choices: ['dev', 'uat'], description: 'Seleccionar ambiente')
        string(name: 'SCENARIO_TAG', trim: false, description: 'Tag a ejecutar')
    }
    stages {
        stage('Build'){
            steps{
                script{
                    if(isUnix()){
                        sh ""
                        sh ""
                    }
                    else{
                        bat "npm install"
                        bat "npx playwright install"
                    }
                }
            }
        }
        stage('Execute Tests'){
            steps{
                script{
                    try{
                        if(isUnix()){
                            echo "Executing tag: ${params.SCENARIO_TAG}"
                            sh 'mvn clean verify -Dcucumber.filter.tags="${SCENARIO_TAG}"'
                        }
                        else {
                            echo "Executing tag: ${params.SCENARIO_TAG}"
                            bat "npm run cucumber-test-${params.ENV} -- --tags="${params.SCENARIO_TAG}""
                        }

                    } finally{
                        publishReport();
                    }
                }
            }
        }
    }
}

    def publishReport(){
        publishHTML(target: [
            reportName: 'Playwriht Report',
            reportDir: 'test-results/reports',
            reportFiles: 'index.html',
            keepAll: true,
            alwaysLinkToLastBuild: true,
            allowMissing: false
        ])
    }
    