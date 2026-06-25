#!/bin/bash
source ../config.sh

echo "=== Déploiement Container Instance ==="

az container create \
  --name "api-aci-$PRENOM" \
  --resource-group $RESOURCE_GROUP \
  --image mcr.microsoft.com/azuredocs/aci-helloworld \
  --os-type Linux \
  --cpu 1 \
  --memory 1.5 \
  --dns-name-label "api-aci-$PRENOM" \
  --ports 80

echo "=== URL : http://api-aci-$PRENOM.$REGION.azurecontainer.io ==="