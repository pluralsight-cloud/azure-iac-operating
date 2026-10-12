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

## Deploy with: 

```bash
az deployment group create \
--resource-group AzureInfraRg \
--template-file main.bicep \
--parameters storageAccountName=mypsdemostorageacct2026 accessTier=Cool
```

Remember, `AzureInfraRg` is the name of the Resource Group Created in the previous demo.
