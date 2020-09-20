# What we will be doing in this script.
#   1. Update ./Azure-Resource-Manager-in-A-Serverless-World/assets/arm-ttk/arm-ttk/testcases/deploymentTemplate/Location-Should-Not-Be-Hardcoded.test.ps1 to custom test
#   2. Use ARM-TTK to check our template for best practices

$basePath = "/home/codespace/workspace"

Clear-Host
Import-Module "$basePath/Azure-Resource-Manager-in-A-Serverless-World/assets/arm-ttk/arm-ttk/arm-ttk.psd1"
Test-AzTemplate -TemplatePath "$basePath/Azure-Resource-Manager-in-A-Serverless-World/assets/demo-3-deployment"
