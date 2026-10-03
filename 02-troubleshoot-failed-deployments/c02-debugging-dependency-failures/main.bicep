targetScope = 'resourceGroup'

@description('Name of the existing Storage Account')
param storageAccountName string

// Intentionally reference a Storage Account that does not exist.
resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' existing = {
  name: storageAccountName
}

// Replace the exisiting resource above with the config for a new resource:
// resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
//   name: storageAccountName
//   location: resourceGroup().location
//   sku: {
//     name: 'Standard_LRS'
//   }
//   kind: 'StorageV2'
// }

// Attempt to create the Blob Service under the missing Storage Account.
resource blobService 'Microsoft.Storage/storageAccounts/blobServices@2023-05-01' = {
  parent: storageAccount
  name: 'default'
}
