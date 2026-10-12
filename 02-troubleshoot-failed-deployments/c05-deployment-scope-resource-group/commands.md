## Getting started - Git clone

If general, if you need to download this code repo in the Azure Cloud Shell you can run:

```bash
git clone https://github.com/pluralsight-cloud/azure-iac-operating.git
```

Then you should have all the demos you need for the course while you are still in the shell. But they will likely not remain there past your current Cloud Shell session.

## Do a Resource Group Scoped Deployment

```bash
az deployment group create \
  --resource-group demoPsResourceGroup \
  --template-file main.bicep \
  --parameters keyVaultName=my-demo-kv-REPLACE_ME_WITH_UNIQUE_STRING
```

## Clean up the resources and resource group:

```bash
az group delete --name demoPsResourceGroup --yes
```
