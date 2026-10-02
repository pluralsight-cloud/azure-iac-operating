@description('The name of the Web PubSub service instance.')
param resourceName string = 'pubsub-${uniqueString(resourceGroup().id)}'

@description('The location for the resource. Defaults to the resource group location.')
param location string = resourceGroup().location

@description('The pricing tier for the Web PubSub service.')
param skuName string = 'Standard_S1'


@description('The number of units for the capacity.')
param skuCapacity int = 1


resource webPubSub 'Microsoft.SignalRService/webPubSub@2024-03-01' = {
 name: resourceName
 location: location
 sku: {
   name: skuName
   tier: 'Standard'
   capacity: skuCapacity
 }
 properties: {
   publicNetworkAccess: 'Enabled'
   tls: {
     clientCertEnabled: false
   }
 }
}


output pubSubName string = webPubSub.name
output pubSubHostName string = webPubSub.properties.hostName
