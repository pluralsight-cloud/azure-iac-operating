## Getting started - Git clone

If general, if you need to download this code repo in the Azure Cloud Shell you can run:

```bash
git clone https://github.com/pluralsight-cloud/azure-iac-operating.git
```

Then you should have all the demos you need for the course while you are still in the shell. But they will likely not remain there past your current Cloud Shell session.

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
