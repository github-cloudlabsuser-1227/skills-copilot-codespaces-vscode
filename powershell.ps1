# Define parameters
$resourceGroupName = "yourResourceGroupName"
$location = "East US"
$storageAccountName = "yourstorageaccountname"
$skuName = "Standard_LRS"
$accessTier = "Hot"

# Login to Azure
Connect-AzAccount

# Create resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind StorageV2 `
                     -AccessTier $accessTier

Write-Output "Storage account $storageAccountName created successfully in resource group $resourceGroupName."