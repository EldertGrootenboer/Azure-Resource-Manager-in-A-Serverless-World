# What we will be doing in this script.
#   1. Use the What-If switch to determine the changes that will happen to our resources

$subscriptionName = "Visual Studio Enterprise"
$resourceGroupName = "rg-arm-in-a-serverless-world"
$basePath = "C:\Users\elder\OneDrive\Sessions\Azure-Resource-Manager-in-A-Serverless-World"

Clear-Host
Get-AzSubscription -SubscriptionName $subscriptionName | Set-AzContext
New-AzResourceGroupDeployment -Name Demo3 -ResourceGroupName $resourceGroupName -TemplateFile "$basePath\assets\demo-3-deployment\azuredeploy.json" -WhatIf
