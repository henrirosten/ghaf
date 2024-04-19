#!/usr/bin/env groovy

// SPDX-FileCopyrightText: 2024 Technology Innovation Institute (TII)
//
// SPDX-License-Identifier: Apache-2.0

////////////////////////////////////////////////////////////////////////////////

pipeline {
  agent { label 'built-in' }
  options {
    timestamps ()
  }
  stages {
    stage('Build on x86_64') {
      steps {
        sh 'echo Build'
      }
    }
  }
  post{
    success{
      setBuildStatus("Build succeeded", "SUCCESS");
    }
    failure {
      setBuildStatus("Build failed", "FAILURE");
    } 
  }
}

////////////////////////////////////////////////////////////////////////////////
