$virtualSubnetName = "service-runtime-subnet"
$virtualNetwork= Get-AzVirtualNetwork `
  -Name "VNET-QAS-NETWORKING-001" `
  -ResourceGroupName "RG-QAS-NETWORKING"
   
($virtualNetwork | Select -ExpandProperty subnets | Where-Object  {$_.Name -eq $virtualSubnetName} ).privateLinkServiceNetworkPolicies = "Disabled"  
$virtualNetwork | Set-AzVirtualNetwork
