
$NameList=’John’,’Charlotte’,’Sean’,’Colleen’,’Namoli’,’Maura’,’Neula’
$NumberList=’1’,’2',’345’,’77’


# $webappname = "webapp$(Get-Random -InputObject $NameList)$(Get-Random -InputObject $NumberList)"
$rgname = "resourcegroup$(Get-Random -InputObject $NameList)$(Get-Random -InputObject $NumberList)$(Get-Random -InputObject $NameList)"


New-AzResourceGroup -Name $rgname -Location westus3 #use this command when you need to create a new resource group for your deployment
New-AzResourceGroupDeployment -ResourceGroupName $rgname -TemplateUri https://raw.githubusercontent.com/ddeer1109/101-linux-webapp/main/101-basic-linux-webapp.json