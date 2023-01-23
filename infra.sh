az group create --name tpsmm  --location westeurope
az storage account create \
  --name tpsmm \
  --resource-group tpsmm \
  --location westeurope \
  --sku Standard_LRS \
  --kind StorageV2