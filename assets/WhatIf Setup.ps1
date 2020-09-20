$password = ConvertTo-SecureString "d2hr5zxmfcszjwvmviloof7nn32eezydod7f3z3ts32f4ku44mzq" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential "eldert@eldert.net", $password
Register-PSRepository -Name WhatIfRepository -SourceLocation https://pkgs.dev.azure.com/AzDeploymentWhatIf/WhatIfModules/_packaging/WhatIfFeed/nuget/v2 -PackageManagementProvider Nuget -InstallationPolicy Trusted -Credential $credential
Install-Module -Name Az.Resources -Repository WhatIfRepository -RequiredVersion 2.0.1-alpha4 -AllowPrerelease -AllowClobber -Credential $credential