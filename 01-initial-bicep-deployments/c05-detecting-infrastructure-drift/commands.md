## Getting started - Git clone

If general, if you need to download this code repo in the Azure Cloud Shell you can run:

```bash
git clone https://github.com/pluralsight-cloud/azure-iac-operating.git
```

Then you should have all the demos you need for the course while you are still in the shell. But they will likely not remain there past your current Cloud Shell session.

## Start by creating the pubsub resource:

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