#!/bin/bash
source config.sh

echo "=== Destruction des ressources Azure ==="

echo "--- Suppression App Service ---"
az webapp delete \
  --name "api-appservice-$PRENOM" \
  --resource-group $RESOURCE_GROUP

az appservice plan delete \
  --name "plan-appservice-$PRENOM" \
  --resource-group $RESOURCE_GROUP \
  --yes

echo "--- Suppression Azure Functions ---"
az functionapp delete \
  --name "api-func-$PRENOM" \
  --resource-group $RESOURCE_GROUP

az storage account delete \
  --name "stfunc$PRENOM" \
  --resource-group $RESOURCE_GROUP \
  --yes

echo "--- Suppression Container Instance ---"
az container delete \
  --name "api-aci-$PRENOM" \
  --resource-group $RESOURCE_GROUP \
  --yes

echo "=== Toutes les ressources supprimées ==="