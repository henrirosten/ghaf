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
    stage('Set PR status pending') {
      script {
        setGitHubPullRequestStatus(
          state: 'PENDING',
          context: 'jenkins/pipeline',
          message: 'Build started',
        )
      }
    }
    stage('Build on x86_64') {
      steps {
        sh 'echo Build'
      }
    }
  }
  post {
    success {
      script {
        echo 'Build passed, setting PR status SUCCESS'
        setGitHubPullRequestStatus(
          state: 'SUCCESS',
          context: 'jenkins/pipeline',
          message: 'Build passed',
        )
      }
    }
    failure {
      script {
        echo 'Build failed, setting PR status FAILURE'
        setGitHubPullRequestStatus(
          state: 'FAILURE',
          context: 'jenkins/pipeline',
          message: 'Build failed',
        )
      }
    }
  }
}

////////////////////////////////////////////////////////////////////////////////
