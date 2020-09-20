# Explanation

The [pipeline file](../../.github/workflows/main.yaml) needs to placed in the root for GitHub to use it.

## Prerequisites
Make sure to create a service principal using the Azure CLI script below, and place the outcome in a GitHub secret, as described [on Microsoft Docs](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-github-actions#configure-deployment-credentials).

``` powershell
$projectName="Azure-Resource-Manager-in-A-Serverless-World"
$location="westeurope"
$resourceGroupName = "rg-arm-in-a-serverless-world"
$appName="http://${projectName}"
az login
az account set --subscription "Visual Studio Enterprise"
$scope=$(az group create --name $resourceGroupName --location $location --query 'id')
az ad sp create-for-rbac --name $appName --role Contributor --scopes $scope --sdk-auth
```