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

## Create a new resource group for the deployment:

```bash
az group create \
    --name c05-recovering-deployments-rg \
    --location westus
```

## Deploy the app

```bash
az stack group create \
  --name ps-deploy-recovery-demo \
  --resource-group c05-recovering-deployments-rg \
  --template-file main.bicep \
  --parameters main.bicepparam \
  --parameters sqlAdminPassword='Password1234!' \
  --deny-settings-mode none \
  --action-on-unmanage deleteResources
```

## Fix the bug

Change this line in main.bicep **and** main.bicepparam:

```bicep
param deployDatabase = true
```

To:

```bicep
param deployDatabase = false
```

## Redeploy the stack

```bash
az stack group create \
    --name ps-deploy-recovery-demo \
    --resource-group c05-recovering-deployments-rg \
    --template-file main.bicep \
    --parameters main.bicepparam \
    --parameters sqlAdminPassword='Password1234!' \
    --deny-settings-mode none \
    --action-on-unmanage deleteResources
```

Respond "y" to the prompt.
