param location string

param administratorLogin string

@secure()
param administratorPassword string

var serverName = 'sql${take(uniqueString(resourceGroup().id), 12)}'

resource sqlServer 'Microsoft.Sql/servers@2023-08-01-preview' = {
  name: serverName
  location: location

  properties: {
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorPassword
  }
}

resource database 'Microsoft.Sql/servers/databases@2023-08-01-preview' = {
  parent: sqlServer

  name: 'inventory'

  location: location

  sku: {
    name: 'Basic'
  }
}
