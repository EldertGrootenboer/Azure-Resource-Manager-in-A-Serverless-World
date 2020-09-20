$resourceGroupName = "rg-arm-in-a-serverless-world"

Get-AzSubscription -SubscriptionName "Visual Studio Enterprise" | Set-AzContext
New-AzResourceGroupDeployment -Name Demo3 -ResourceGroupName $resourceGroupName -TemplateFile "./Azure-Resource-Manager-in-A-Serverless-World/Assets/Demo 3 - Tooling/3a. Cosmos DB.json" -WhatIf