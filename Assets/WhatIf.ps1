# Use updated variables in template
New-AzDeploymentWhatIf `
-ScopeType ResourceGroup `
-ResourceGroupName rg-d-arm-in-a-serverless-world  `
-TemplateUri "https://raw.githubusercontent.com/EldertGrootenboer/Sessions/master/Azure%C2%A0Resource%C2%A0Manager%20in%20A%C2%A0Serverless%C2%A0World/Demos/CosmosDB%20Altered.json" `
-DeploymentName Demo

# Use updated variables in template and new collection name from parameter
New-AzDeploymentWhatIf `
  -ScopeType ResourceGroup `
  -ResourceGroupName rg-d-arm-in-a-serverless-world  `
  -TemplateUri "https://raw.githubusercontent.com/EldertGrootenboer/Sessions/master/Azure%C2%A0Resource%C2%A0Manager%20in%20A%C2%A0Serverless%C2%A0World/Demos/CosmosDB%20Altered.json" `
  -DeploymentName Demo `
  -collectionName "UpdatedCollectionName"

# Show resources which are deleted due to deployment mode Complete
New-AzDeploymentWhatIf `
  -ScopeType ResourceGroup `
  -ResourceGroupName rg-d-arm-in-a-serverless-world  `
  -TemplateUri "https://raw.githubusercontent.com/EldertGrootenboer/Sessions/master/Azure%C2%A0Resource%C2%A0Manager%20in%20A%C2%A0Serverless%C2%A0World/Demos/CosmosDB%20Altered.json" `
  -DeploymentName Demo `
  -Mode Complete

# Show new resources created when using new template 
New-AzDeploymentWhatIf `
  -ScopeType ResourceGroup `
  -ResourceGroupName rg-d-arm-in-a-serverless-world `
  -TemplateUri "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-storage-account-create/azuredeploy.json" `
  -storageAccountType Standard_GRS