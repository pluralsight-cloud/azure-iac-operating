## Deploy the infrastructure

```bash
az deployment group create \
    --resource-group rg-m3-bicep-demo \
    --template-file main.bicep \
    --parameters \
        storageAccountName=ps3storagedemo202610 \
        workspaceName=loganalyticsdemo202610 \
        keyVaultName=kvpsdemo202610 \
        accessTier=Cool
```
