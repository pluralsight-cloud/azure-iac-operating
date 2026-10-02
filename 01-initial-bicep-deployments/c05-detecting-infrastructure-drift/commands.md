## Start by creating the networking resources:

```bash
az deployment group create \
  --resource-group AzureInfraRg \
  --template-file "pubsub.bicep"
```

## Manual Changes

Then, log into Azure and make manual changes to the resource.

## Checking for Drift

```bash
az deployment group what-if \
  --resource-group AzureInfraRg \
  --template-file "pubsub.bicep"
```