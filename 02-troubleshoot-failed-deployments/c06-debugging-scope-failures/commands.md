## Attempt a poorly scoped deployment:

For the Management Group ID look in the Azure Console under "Resource Manager" > "Organization" > "Management Groups". 

```bash
az deployment mg create \
    --management-group-id YOUR-MANAGEMENT-GROUP-ID \
    --location westus \
    --template-file main.bicep \
    --parameters main.bicepparam
```

## Attempt to deploy the version with the properly scoped deployment

```
az deployment group create \
    --resource-group AzureInfraRg \
    --template-file main-good-scope.bicep
```