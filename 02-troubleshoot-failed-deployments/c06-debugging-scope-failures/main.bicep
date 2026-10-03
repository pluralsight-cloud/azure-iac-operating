targetScope = 'managementGroup'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'demostorage0220'
  location: 'westus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
