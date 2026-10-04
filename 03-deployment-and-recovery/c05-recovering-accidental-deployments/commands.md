## Create a new resource group for the deployment:


```bash
az group create \
    --name c05-recovering-deployments-rg \
    --location westus
```


## Deploy the app

```bash
az stack group create \
  --name ps-deploy-recovery-demo \
  --resource-group c05-recovering-deployments-rg \
  --template-file main.bicep \
  --parameters main.bicepparam \
  --parameters sqlAdminPassword='Password1234!' \
  --deny-settings-mode none \
  --action-on-unmanage deleteResources
```
