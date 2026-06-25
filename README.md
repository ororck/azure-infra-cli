┌─────────────────────────────────────────┐
│            azure-infra-cli              │
│                                         │
│   push → main                           │
│       └── GitHub Actions                │
│               ├── 🌐 App Service        │
│               ├── ⚡ Azure Functions    │
│               └── 🐳 ACI               │
└─────────────────────────────────────────┘



# azure-infra-cli

Déploiement automatisé de 3 services Azure via GitHub Actions.

## Services déployés

- **App Service** : API PHP 8.2 (PaaS)
- **Azure Functions** : API Python 3.11 (Serverless)
- **Container Instances** : Image Docker publique Microsoft

## Déclenchement

Un push sur `main` déclenche le workflow et déploie les 3 services automatiquement.

## Secrets GitHub requis

- `AZURE_CLIENT_ID`
- `AZURE_TENANT_ID`
- `AZURE_SUBSCRIPTION_ID`

## Variables GitHub requises

- `RESOURCE_GROUP`
- `PRENOM`