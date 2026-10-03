targetScope = 'resourceGroup'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'demostorage0220'
  location: resourceGroup().location

  sku: {
    name: 'Standard_LRS'
  }

  kind: 'StorageV2'
}
