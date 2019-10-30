pipeline {
    agent any
	 options {
	    disableConcurrentBuilds()
	  }
    stages {
        stage('Building p1 script') {
         steps {
            sh '''#!/bin/bash
            chmod 700 p1.sh
            ./p1.sh
            '''
      }
        }
    }
}
