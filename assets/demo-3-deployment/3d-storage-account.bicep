/*
What we will be doing in this template.
    1. Create Bicep template in which we deploy a standard Storage Account
    2. Build the ARM template from the Bicep template
*/
param location string = 'westeurope'
param name string = 'starmserverlessworld' // must be globally unique

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
    name: name
    location: location
    kind: 'Storage'
    sku: {
        name: 'Standard_LRS'
    }
}