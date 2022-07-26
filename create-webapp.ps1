
$NameList=’John’,’Charlotte’,’Sean’,’Colleen’,’Namoli’,’Maura’,’Neula’
$NumberList=’1’,’2',’345’,’77’


$webappname = "webapp$(Get-Random -InputObject $NameList)$(Get-Random -InputObject $NumberList)"
$rgname = 'webapps-dev-rg'
$location = 'westus3'

Get-Random -InputObject $NameList

# Write-Host "$(Get-Random -InputObject $NameList)$(Get-Random -InputObject $NumberList)"



New-AzResourceGroup -Name $rgname -Location $location

New-AzAppServicePlan -Name $webappname -Location $location -ResourceGroupName $rgname

New-AzWebApp -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName $rgname