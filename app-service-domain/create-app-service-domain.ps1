$rgname = "appservicedomain-ala23490"

New-AzResourceGroup -Name $rgname -Location westus3 #use this command when you need to create a new resource group for your deployment
New-AzResourceGroupDeployment -ResourceGroupName $rgname -TemplateUri https://raw.githubusercontent.com/ddeer1109/101-linux-webapp/main/101-basic-linux-webapp.json