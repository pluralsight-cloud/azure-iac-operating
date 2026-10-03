## Deploy the resources with the improper registration

```bash
az deployment group create \
  --resource-group demoResourceGroup \
  --template-file main.bicep \
  --parameters keyVaultName=my-demo-kv-REPLACE_ME_WITH_UNIQUE_STRING
```
## Clean up the resources and resource group:

```bash
az group delete --name demoResourceGroup --yes
```