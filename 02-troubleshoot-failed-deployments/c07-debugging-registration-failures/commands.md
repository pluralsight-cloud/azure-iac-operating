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

## Deploy the resources with the improper registration

```bash
az deployment group create \
  --resource-group AzureInfraRg \
  --template-file main.bicep \
  --parameters keyVaultName=my-demo-kv-REPLACE_ME_WITH_UNIQUE_STRING
```


## Documentation Page:

You can visit [this documentation page](https://learn.microsoft.com/en-us/azure/templates/microsoft.keyvault/2026-02-01/vaults?pivots=deployment-language-bicep).
