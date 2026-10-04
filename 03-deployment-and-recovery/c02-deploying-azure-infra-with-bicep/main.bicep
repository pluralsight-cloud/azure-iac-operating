targetScope = 'resourceGroup'

@description('First storage account name')
param storageAccountName1 string

@description('Second storage account name')
param storageAccountName2 string

@description('Deployment location')
param location string = resourceGroup().location

// First storage account
module storage1 './storage.bicep' = {
  name: 'storageDeployment1'

  params: {
    storageAccountName: storageAccountName1
    location: location
  }
}

// Second storage account
module storage2 './storage.bicep' = {
  name: 'storageDeployment2'

  params: {
    storageAccountName: storageAccountName2
    location: location
  }
}

output storage1Id string = storage1.outputs.storageAccountId
output storage2Id string = storage2.outputs.storageAccountId
