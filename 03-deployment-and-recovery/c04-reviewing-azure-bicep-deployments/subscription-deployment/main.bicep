targetScope = 'subscription'

@description('Name of the resource group')
param resourceGroupName string

@description('Azure region')
param location string

resource rg 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: resourceGroupName
  location: location
}
