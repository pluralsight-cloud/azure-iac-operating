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

## Deploy the subscription scope bicep template

```bash
az deployment sub create \
  --name demoPsSubDeployment \
  --location westus \
  --template-file main.bicep \
  --parameters main.bicepparam
```

Note that the location above is not the location of the resources, but the location of deployment metadata.
