## Getting started - Git clone

If general, if you need to download this code repo in the Azure Cloud Shell you can run:

```bash
git clone https://github.com/pluralsight-cloud/azure-iac-operating.git
```

Then you should have all the demos you need for the course while you are still in the shell. But they will likely not remain there past your current Cloud Shell session.

## Attempt a poorly scoped deployment:

For the Management Group ID look in the Azure Console under "Resource Manager" > "Organization" > "Management Groups". 

```bash
az deployment mg create \
    --management-group-id YOUR-MANAGEMENT-GROUP-ID \
    --location westus \
    --template-file main.bicep \
    --parameters main.bicepparam
```

## Attempt to deploy the version with the properly scoped deployment

```
az deployment group create \
    --resource-group AzureInfraRg \
    --template-file main-good-scope.bicep
```