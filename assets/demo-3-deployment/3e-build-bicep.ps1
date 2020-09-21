# What we will be doing in this script.
#   1. Use the What-If switch to determine the changes that will happen to our resources

$basePath = "/home/codespace/workspace"

bicep build "$basePath/Azure-Resource-Manager-in-A-Serverless-World/assets/demo-3-deployment/3d-storage-account.bicep"
