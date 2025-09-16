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
                            bat(label: "test", script: """ 
                            npm run cucumber-test-${params.ENV} -- --tags="${params.SCENARIO_TAG}"
                            """)
                        }

                    } finally{
                        publishReport();
                    }
                }
            }
        }
         echo 'Generate Reports'
         script {
            sh(label: "Reports", script: """
             ls reports
             ls allure-results
             npm run allure-report
             ls allure-report
             npm i cucumber-html-reporter
             nmp run cucumber-report
            """)
         }

        echo 'Publish Reports'

        publishReport(
            report: '/'+'/reports/',
            reportFiles: 'cucumber-report.html',
            reportName: 'Cucumber-report'
        )

    }
}

    def publishReport(){
        publishHTML(target: [
            reportName: 'Playwright Report',
            reportDir: 'test-results/reports',
            reportFiles: 'index.html',
            keepAll: true,
            alwaysLinkToLastBuild: true,
            allowMissing: false
        ])
    }
    