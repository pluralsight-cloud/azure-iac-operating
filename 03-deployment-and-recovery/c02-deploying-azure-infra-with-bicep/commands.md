## Create a fresh resource group to test with

```bash
az group create \
    --name rg-m3-bicep-demo \
    --location westus
```

## Deploy the bicep code using the storage module 

```bash
az deployment group create \
  --resource-group rg-m3-bicep-demo \
  --template-file main.bicep \
  --parameters \
      storageAccountName1=ps1storagedemo12345 \
      storageAccountName2=ps2storagedemo12346 \
      location=westus
```

Remember, you may have to change the names of the storage accounts as they must be globally unique.
