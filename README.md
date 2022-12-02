Based on Les Jackson's Youtube course "Azure DevOps: Provision API Infrastructure using Terraform - Full Course", at https://www.youtube.com/watch?v=Ff0DoAmpv6w

Gist of the course is:
- Use the default weather forecast ASPNET web API
- Build and deploy the API to a docker container, and push image to Docker hub
- Build Azure infrastructure for deployment using Terraform - can be run locally from command line to test
- Create AzureDevops pipeline; wire in terraform to provision infrastructure

Manual infrastructure deployment from command line
--------------------------------------------------
Need azure command line installed to perform manual deployments from command line
Login to azure using "az login", or "az login --use-device-code"
Use terraform init / plan / apply / destroy to perform manual deployment / destruction of azure infrastructure





