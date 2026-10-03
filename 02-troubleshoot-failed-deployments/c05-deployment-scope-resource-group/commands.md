## Do a Resource Group Scoped Deployment

```bash
az deployment group create \
  --resource-group demoPsResourceGroup \
  --template-file main.bicep \
  --parameters keyVaultName=my-demo-kv-REPLACE_ME_WITH_UNIQUE_STRING
```

## Clean up the resources and resource group:

```bash
az group delete --name demoPsResourceGroup --yes
```
