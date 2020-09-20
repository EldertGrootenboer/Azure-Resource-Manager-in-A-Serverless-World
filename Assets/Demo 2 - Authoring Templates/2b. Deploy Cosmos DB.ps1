# What we will be doing in this script.
#   1. Create a resource group
#   2. Deploy the Cosmos DB ARM template

$subscriptionName = "Visual Studio Enterprise"
$resourceGroupName = "rg-arm-in-a-serverless-world"

Get-AzSubscription -SubscriptionName $subscriptionName | Set-AzContext
New-AzResourceGroup -Name $resourceGroupName -Location 'West Europe' -Tag @{CreationDate=[DateTime]::UtcNow.ToString(); Project="Azure Resource Manager In A Serverless World"; Purpose="Session"}
New-AzResourceGroupDeployment -Name Demo2 -ResourceGroupName $resourceGroupName -TemplateFile "./Azure-Resource-Manager-in-A-Serverless-World/Assets/Demo 2 - Authoring Templates/2a. Cosmos DB.json"