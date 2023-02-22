
![CI/CD GIF](https://user-images.githubusercontent.com/104270411/220518314-9f12ef08-eec3-465b-9a15-4ec123228034.gif)

# NodeJs Project Pipeline Setup


This project enables you to deploy your web application without manual intervention, making it easier and faster to get your application up and running.

### Prerequisites:
#


* An active Google Cloud account
* SonarQube account 
* Pre-Configured GKE Cluster



### Setting up the Pipeline:
#



* Create a new service account in GCP with the following IAM roles:
```
Service Account User (basic owner)
```
* Generate a new key for the service account and download it as a JSON file.

<br>

* To use this workflow, following secrets must be added to the repository:

<br>

```
PROJECT_ID: the ID of the Google Cloud project where the Container Registry is located.
GOOGLE_DOMAIN_NAME: Your domain name
SERVICE_ACCOUNT: The JSON key file for the service account created above.
SONAR_TOKEN: Token generated in sonarcloud account.
```
<br>

## Continuous Delivery Workflow
#
<br>

This GitHub Actions workflow provides continuous delivery for a Node.js application. It will build a Docker image, tag it with the current Git SHA, and push it to Google Cloud's Container Registry.

<br>


* Modify the following environment variables in `.github/workflows/ContinuousDelivery.yaml` file.

<br>

```
repo: The URL of your project repository.
app_version: The version of the application to deploy.
repo_region: The GCP region.
project_id: The ID of your GCP project.
app_name: The name of your application .
tag_new_version: ${GITHUB_SHA})
enable_sonar: true if sonarqube will be used to scan images.
sonar_organization: The organization ID for your SonarQube instance.
sonar_projectKey: The project key for your SonarQube instance.
```

<br>

## Workflow Description
#

<br>

The workflow is triggered by a push event to the master branch of the repository. It consists of a single job, `image-build`. The job runs on an Ubuntu virtual machine and performs the following steps:

<br>

* Checks out the repository code using the `actions/checkout` action.
* Clones the repository to a local directory using the `git clone` command.
* Runs a SonarCloud scan on the codebase (optional).
* Switches to the branch specified by `app_version` using the `git checkout` command.
* Removes any old Docker images.
* Builds a new Docker image using the `docker build` command.
* Tags the Docker image with the current Git SHA using the `docker image tag` command.
* Verifies that the gcloud CLI is installed.
* Authenticates to Google Cloud using a service account.
* Configures Docker to authenticate to the Container Registry using the `gcloud auth configure-docker` command.
* Pushes the Docker image to the Container Registry using the `docker push` command.

<br>
<br>


## Continuous Deployment Workflow
#
This workflow uses Github Actions to deploy a NodeJS application to Google Kubernetes Engine (GKE) and uses Terraform for infrastructure management.


<br>

* Modify the following environment variables in `.github/workflows/ContinuousDeployment.yaml` file.

<br>

```

* region: The region where GKE cluster is located.
* app_name: The name of the application.
* app_version: The version of the application, taken from Github SHA.
* app_port: The port on which the application listens.
* project_id: The ID of the Google Cloud project where the application will be deployed.
* repository: The location of the Docker repository.
* cluster_name: The name of the GKE cluster.
* helm_repository: The location of the custom Helm chart.
* google_domain_name: The domain name used for the application.
* environment: The environment where the application will be deployed.
```

<br>

## Workflow Triggers
#
This workflow runs when the ContinuousDelivery workflow is completed or manually triggered using the Actions tab.



## Job Steps
* Checkout the Github repository.
* Authenticate to Google Cloud.
* Clone the custom Helm chart repository.
* Configure the backend using setenv.sh.
* Initialize Terraform.
* Create the Terraform workspace.
* Authenticate to GKE.
* Get GKE credentials.
* Export KUBECONFIG variable.
* Deploy the application using Terraform.

<br>

## Conclusion
#
This workflow automates the deployment of a NodeJS application to GKE using Terraform. With the appropriate environment variables set up, the workflow is easy to use and saves time in the deployment process.
