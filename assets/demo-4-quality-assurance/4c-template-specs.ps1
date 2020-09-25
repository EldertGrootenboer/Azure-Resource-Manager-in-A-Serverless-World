# What we will be doing in this script.
#   1. Enable the template specs preview modules
#   2. Create a resource group
#   3. Create a template spec
#   4. Deploy the template spec

# Update these according to the environment
$subscriptionName = "Visual Studio Enterprise"
$resourceGroupName = "rg-arm-in-a-serverless-world"
$templateSpecName = "ts-arm-in-a-serverless-world"
$templateSpecsPreviewPath = "C:/Users/elder/Downloads/Azure_PowerShell/AzTemplateSpecsPrivatePreview"
$basePath = "C:/Users/elder/OneDrive/Sessions/Azure-Resource-Manager-in-A-Serverless-World"
$version = "1.0.0"
$location = "West Europe"

# Login to Azure
Get-AzSubscription -SubscriptionName $subscriptionName | Set-AzContext

# Run the template specs modules wizard
Set-ExecutionPolicy Bypass -Scope Process
Invoke-Expression "$templateSpecsPreviewPath/AzTemplateSpecsPrivatePreview.ps1"

# Create the resource group and create the template spec
New-AzResourceGroup -Name $resourceGroupName -Location $location -Tag @{CreationDate=[DateTime]::UtcNow.ToString(); Project="Azure Resource Manager In A Serverless World"; Purpose="Session"}
New-AzTemplateSpec -Name $templateSpecName -ResourceGroupName $resourceGroupName -Version $version -Location $location -TemplateFile "$basePath/assets/demo-4-quality-assurance/azuredeploy.json"

# Deploy the Azure resource using the earlier created template spec
$id = (Get-AzTemplateSpec -ResourceGroupName $resourceGroupName -Name $templateSpecName -Version $version).Versions.Id
New-AzResourceGroupDeployment -TemplateSpecId $id -ResourceGroupName $resourceGroupName