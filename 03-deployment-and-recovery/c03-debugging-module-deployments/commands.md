## Getting started - Git clone

If general, if you need to download this code repo in the Azure Cloud Shell you can run:

```bash
git clone https://github.com/pluralsight-cloud/azure-iac-operating.git
```

Then you should have all the demos you need for the course while you are still in the shell. But they will likely not remain there past your current Cloud Shell session.


You can also make the Cloud Shell prompt more compact by running:

```bash
export PS1="\W \$ "
```

## Deploy the infrastructure

```bash
az deployment group create \
    --resource-group rg-m3-bicep-demo \
    --template-file main.bicep \
    --parameters \
        storageAccountName=ps3storagedemo202610 \
        workspaceName=loganalyticsdemo202610 \
        keyVaultName=kvpsdemo202610 \
        accessTier=Cool
```
