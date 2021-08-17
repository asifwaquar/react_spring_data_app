##Get the client id of the clustor using MSI
CLIENT_ID=$(az aks show -g terraform-aks-dev -n terraform-aks-dev-cluster --query "identity. principalId" --output tsv)

#GET the ACR Id
ACR_ID=$(az acr show --name terraformacr --resource-group terraform-aks-dev --query "id" --output tsv)

##asssign role 
az role assignment create --assignee $CLIENT_ID --role acrpull --scope $ACR_ID