## Start by creating the networking resources:

```bash
az deployment group create \
  --resource-group AzureInfraRg \
  --template-file "pubsub.bicep"
```

## Manual Changes

Then, log into Azure and make manual changes to the resource.

Under "Settings" > "Scale Up" change the tier to Free_F1.

Then Save the resource.

## Checking for Drift

Next, attempt to detect drift using the Bicep template and the what-if command:

```bash
az deployment group what-if \
  --resource-group AzureInfraRg \
  --template-file "pubsub.bicep"
```