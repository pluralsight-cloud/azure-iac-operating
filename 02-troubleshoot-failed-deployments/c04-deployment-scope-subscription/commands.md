## Deploying the Subscription-scoped Deployment

```
az deployment sub create \
  --name demoSubDeploymentWestUs \
  --location westus \
  --template-file main.bicep \
  --parameters resourceGroupName=demoPsResourceGroup resourceGroupLocation=westus
```
