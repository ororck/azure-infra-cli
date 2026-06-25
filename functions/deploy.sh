#!/bin/bash
source ../config.sh

echo "=== Déploiement Azure Functions ==="

# Création du Storage Account (requis par Functions)
az storage account create \
  --name "stfunc$PRENOM" \
  --resource-group $RESOURCE_GROUP \
  --location $REGION \
  --sku Standard_LRS

# Création de la Function App
az functionapp create \
  --name "api-func-$PRENOM" \
  --resource-group $RESOURCE_GROUP \
  --storage-account "stfunc$PRENOM" \
  --consumption-plan-location $REGION \
  --runtime python \
  --runtime-version 3.11 \
  --functions-version 4 \
  --os-type linux

echo "=== Function App créée ==="