## Check the Tenants

```bash
az account show --query tenantId -o table
```

## Confirm the Target Subscription

```bash
az account show \
--query "{Name:name, ID:id}" \
-o table
```

## Set the subscription if needed

```bash
az account set \
--subscription "<subscription-name-or-id>"
```

## Deployment Identity

```bash
az ad signed-in-user show \
--query "{Name:displayName, ObjectID:id, Type:userType}" \
-o table
```

```bash
az account show --query "user" -o table
```

```bash
az role assignment list \
--assignee $(az ad signed-in-user show --query userPrincipalName -o tsv) \
--output table
```

# Create a Resource Group

```bash
az group create \
--name AzureInfraRg \
--location westus
```
