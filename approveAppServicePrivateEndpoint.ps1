$virtualSubnetName = "App-Service"
$virtualNetwork= Get-AzVirtualNetwork `
  -Name "vnet-dev-eastus2-001" `
  -ResourceGroupName "RG-DEV-NETWORKING-001"
   
($virtualNetwork | Select -ExpandProperty subnets | Where-Object  {$_.Name -eq $virtualSubnetName} ).privateLinkServiceNetworkPolicies = "Disabled"  


---
$virtualNetwork | Set-AzVirtualNetwork

$virtualSubnetName = "Azure-App-Service"
$virtualNetwork= Get-AzVirtualNetwork `
  -Name "vnet-sbx-eastus2-001" `
  -ResourceGroupName "RG-SBX-NETWORKING"
   
($virtualNetwork | Select -ExpandProperty subnets | Where-Object  {$_.Name -eq $virtualSubnetName} ).privateLinkServiceNetworkPolicies = "Disabled"  
 
$virtualNetwork | Set-AzVirtualNetwork

---

$virtualSubnetName = "Azure-App-Service"
$virtualNetwork= Get-AzVirtualNetwork `
  -Name "VNET-QAS-NETWORKING-001" `
  -ResourceGroupName "RG-QAS-NETWORKING"
   
($virtualNetwork | Select -ExpandProperty subnets | Where-Object  {$_.Name -eq $virtualSubnetName} ).privateLinkServiceNetworkPolicies = "Disabled"  
 
$virtualNetwork | Set-AzVirtualNetwork