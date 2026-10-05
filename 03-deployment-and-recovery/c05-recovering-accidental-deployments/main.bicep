targetScope = 'resourceGroup'

@description('Location for all resources')
param location string = resourceGroup().location

@description('Deploy the future database module')
param deployDatabase bool = true // <-- Intentional bug for the demo

@secure()
@description('SQL administrator password')
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
