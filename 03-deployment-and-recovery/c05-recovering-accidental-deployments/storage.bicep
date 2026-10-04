param location string

resource storage 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'st${uniqueString(resourceGroup().id)}'

  location: location

  kind: 'StorageV2'

  sku: {
    name: 'Standard_LRS'
  }
}
