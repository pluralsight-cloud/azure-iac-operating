targetScope = 'resourceGroup'

param location string = resourceGroup().location

param storageAccountName string
param keyVaultName string
param workspaceName string

@allowed([
  'Hot'
  'Cool'
])
param accessTier string

module logAnalytics './loganalytics.bicep' = {
  name: 'logAnalytics'

  params: {
    workspaceName: workspaceName
    location: location
  }
}

module storage './storage.bicep' = {
  name: 'storage'

  params: {
    storageAccountName: storageAccountName
    location: location
    accessTier: accessTier
  }
}

module keyVault './keyvault.bicep' = {
  name: 'keyVault'

  params: {

    keyVaultName: keyVaultName

    location: location

  }
}
