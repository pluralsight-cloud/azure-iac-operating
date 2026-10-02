## Start by creating the networking resources:

```bash
az deployment group create \
  --resource-group AzureInfraRg \
  --template-file "network-before.bicep"
```

## Then, to view the changes prior to making them use:

```bash
az deployment group what-if \
  --resource-group AzureInfraRg \
  --template-file "network-after.bicep"
```
