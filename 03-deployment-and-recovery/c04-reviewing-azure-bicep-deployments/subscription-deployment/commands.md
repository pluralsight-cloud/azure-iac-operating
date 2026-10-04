## Deploy the subscription scope bicep template

```bash
az deployment sub create \
  --name demoPsSubDeployment \
  --location westus \
  --template-file main.bicep \
  --parameters main.bicepparam
```

Note that the location above is not the location of the resources, but the location of deployment metadata.
