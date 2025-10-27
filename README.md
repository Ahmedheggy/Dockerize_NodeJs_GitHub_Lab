##  Node.js Docker Jenkins Pipeline

This project demonstrates how to automate building and deploying a
Dockerized Node.js application using **Jenkins Pipeline**.

###  Requirements

-   Jenkins installed and running
-   Docker installed and configured
-   Jenkins user added to `docker` group
-   GitHub repository containing Dockerfile and Jenkinsfile

###  Jenkins Setup

1.  Create a new pipeline job in Jenkins.
2.  Set **Pipeline script from SCM**.
3.  Use this repository URL.
4.  Select branch: `nodejs-docker-task`.

###  Jenkinsfile Stages

  -----------------------------------------------------------------------
  Stage                  Description
  ---------------------- ------------------------------------------------
  **Checkout**           Pulls source code from GitHub

  **Build Docker Image** Builds Docker image and tags it using Jenkins
                         `BUILD_NUMBER`

  **Run Container**      Stops old container (if exists) and runs a new
                         one on port `3000`
  -----------------------------------------------------------------------

###  Build Docker Image Tag Example

    nodejs-app:1
    nodejs-app:2
    nodejs-app:3
    ...

###  Access the Application

After the pipeline runs successfully:

    http://SERVER_IP:3000

###  Check Running Container

``` bash
docker ps
```
