param keyVaultName string
param location string


resource keyVault 'Microsoft.KeyVault/vaults@2023-07-01' = {
  // This name is probably already taken and we might want to make a
  // parameter out of it
  name: 'myvault'
  // So maybe something like this...?
  // name: keyVaultName
  location: location

  properties: {

    tenantId: subscription().tenantId

    // We wanted to test Premium plans so let's start with this premium plan
    // that I found on a blog my cousin sent me:
    sku: {
      family: 'A'
      name: 'PremiumPlus'
    }

    // The leftover config I think we were using before:
    // sku: {
    //   family: 'A'
    //   name: 'standard'
    // }

    enableRbacAuthorization: true

  }
}
