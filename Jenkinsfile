pipeline {
  agent any
  stages {
    stage('Construyendo la App') {
      steps {
        echo 'Paso 1 construyendo la App'
        sh 'run_build_script.sh'
      }
    }

    stage('Test Linux') {
      steps {
        echo 'Realizando la prueba en Linux'
        sh 'run_linux_test.sh'
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
}