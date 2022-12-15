
param location string = resourceGroup().location
param appServiceAppName string
param appServicePlanName string
@allowed([
  'nonprod'
  'prod'
])

param storageAccountNames array = [ 'saauditus'
'saauditeurope'
'saauditapac'
]


resource storageAccount 'Microsoft.Storage/storageAccounts@2022-05-01' = {
    name: talphaidzefinalexam1
    location: location
    sku: {
      name: storageAccountSkuName
    }
    kind: 'StorageV2'
    properties: {
      accessTier: 'Hot'
    }
  }

  resource storageAccount 'Microsoft.Storage/storageAccounts@2022-05-01' = {
    name: talphaidzefinalexam2
    location: location
    sku: {
      name: storageAccountSkuName
    }
    kind: 'StorageV2'
    properties: {
      accessTier: 'Hot'
    }
  }

