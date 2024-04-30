# Loop For em PowerShell
For ($i = 1; $i -lt 3; $i++)
{
    $i
}

####################
# Parâmetros

# Criando ambiente na Azure com quantidade de máquinas e região determinada
.\setupEnviroment.ps1 -size 5 -location "East US"

####################

# Script

# Parâmetros
Param([string]$location, [int]$size)

# Segundo Exemplo
.\setupEnviroment 5 "East US"

# Segundo Exemplo de Script
param([int]$size, [string]$location)


#####################

# Automatizando criação de máquinas na Azure
param([string]$resourceGroup)
$adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."
for ($i = 1; $i -lt 3;$i++)
{
    $vmName = "ConferenceDemo" +$i
    Write-Host "Creating VM: " $vmName
    New-AzVM -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest
}

####################

# Deletando recursos da Azure
Remove-AzResourceGroup -Name MyResourceGroupName