# What we will be doing in this script.
#   1. Create a resource group
#   2. Deploy Azure services

# Update these according to the environment
$subscriptionName = "Visual Studio Enterprise"
$resourceGroupName = "rg-arm-in-a-serverless-world"
$basePath = "C:\Users\elder\OneDrive\Sessions\Azure-Resource-Manager-in-A-Serverless-World"

# Login to Azure
Get-AzSubscription -SubscriptionName $subscriptionName | Set-AzContext

# Create the resource group and deploy the resources
New-AzResourceGroup -Name $resourceGroupName -Location 'West Europe' -Tag @{CreationDate=[DateTime]::UtcNow.ToString(); Project="Azure Resource Manager In A Serverless World"; Purpose="Session"}
New-AzResourceGroupDeployment -Name "ARMServerless" -ResourceGroupName $resourceGroupName -TemplateFile "$basePath\Assets\IaC\azuredeploy.json"

# Optional for debugging, loops through each local file individually
#Get-ChildItem "$basePath\Assets\IaC" -Filter *.json | 
#Foreach-Object {
#    Write-Output "Deploying: " $_.FullName
#   New-AzResourceGroupDeployment -Name Demo -ResourceGroupName $resourceGroupName -TemplateFile $_.FullName -ErrorAction Continue
#}