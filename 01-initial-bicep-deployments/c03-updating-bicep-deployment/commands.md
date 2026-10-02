## Deploy with: 

```bash
az deployment group create \
--resource-group AzureInfraRg \
--template-file main.bicep \
--parameters storageAccountName=mypsdemostorageacct2026 accessTier=Cool
```

Remember, `AzureInfraRg` is the name of the Resource Group Created in the previous demo.
