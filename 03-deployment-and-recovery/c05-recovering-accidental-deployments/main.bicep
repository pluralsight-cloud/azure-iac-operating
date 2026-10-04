targetScope = 'resourceGroup'

@description('Azure region')
param location string = resourceGroup().location

@description('Deploy the future database module')
param deployDatabase bool = true // <-- BUG! Should be false.

@secure()
param sqlAdminPassword string

module storage './storage.bicep' = {
  name: 'storage'

  params: {
    location: location
  }
}

module database './database.bicep' = if (deployDatabase) {
  name: 'database'

  params: {
    location: location
    administratorLogin: 'sqladmin'
    administratorPassword: sqlAdminPassword
  }
}
