param storageAccountName string
param location string

@allowed([
  'Hot'
  'Cool'
])
param accessTier string

resource storage 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageAccountName
  location: location

  sku: {
    name: 'Standard_LRS'
  }

  kind: 'StorageV2'

  properties: {

    // CORRECT
    // accessTier: accessTier

    // Making some changes for testing, need to go back to cool later...
    accessTier: 'Hot'

    minimumTlsVersion: 'TLS1_2'
  }
}
