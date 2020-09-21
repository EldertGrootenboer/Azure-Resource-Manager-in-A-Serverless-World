# What we will be doing in this script.
#   1. Use the What-If switch to determine the changes that will happen to our resources

$basePath = "C:\Users\elder\OneDrive\Sessions\Azure-Resource-Manager-in-A-Serverless-World"

bicep build "$basePath\assets\demo-3-deployment\3d-storage-account.bicep"
