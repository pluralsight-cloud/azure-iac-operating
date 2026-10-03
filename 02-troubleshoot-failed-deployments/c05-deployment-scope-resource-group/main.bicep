// Scopes are "resourceGroup" by default. 
// You can set it manually by using the targetScope: 
// targetScope = 'resourceGroup'
// But this is not required

param keyVaultName string
param location string = resourceGroup().location

resource keyVault 'Microsoft.KeyVault/vaults@2023-07-01' = {
  name: keyVaultName
  location: location
  properties: {
    tenantId: tenant().tenantId
    sku: {
      family: 'A'
      name: 'standard'
    }
    enableRbacAuthorization: true
  }
}
