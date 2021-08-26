pipeline {
  agent any
  stages {
    stage('Construyendo la App') {
      steps {
        echo 'Paso 1 construyendo la App'
        sh 'sh run_build_script.sh'
      }
    }

    stage('Test Linux') {
      steps {
        echo 'Realizando la prueba en Linux'
        sh 'sh run_linux_test.sh'
      }
    }

    stage('Comprobacion manual') {
      steps {
        echo 'Esperando para la confirmacion manual'
        input 'Esta todo OK para desplegar'
        timestamps() {
          echo 'Momento de confirmacion del ok manual'
        }

      }
    }

    stage('Desplegando en Produccion') {
      steps {
        echo 'Desplegando en produccion'
      }
    }

  }
  post {
    always {
      archiveArtifacts(artifacts: 'demoapp.jar', fingerprint: true)
    }

    failure {
      mail(to: 'gp1304@gmail.com', subject: "Failed Pipeline ${currentBuild.fullDisplayName}", body: " For details about the failure, see ${env.BUILD_URL}")
    }

  }
}