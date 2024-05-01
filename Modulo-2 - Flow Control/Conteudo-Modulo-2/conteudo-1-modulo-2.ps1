# Automatizando tarefas Azure utilizando scripts in powershell
# Azure CLI
# The Azure Portal
# Azure PowerShell

# Azure CLI exemplo:
# Criando VM com Azure CLI
az vm create \
    --resource-group CrmTestingResourceGroup \
    --name CrmUnitTests \
    --image Ubuntu2204
    ...

# Azure PowerShell
# Criando VM com Azure PowerShell
New-AzVm `
    -resourceGroupName "CrmTestingResourceGroup" `
    -Name "CrmUnitTests" `
    -Image "UbuntuLTS"
    ....


#################################

#################################
#                               #
#       Módulos PowerShell      #
#                               #
#################################    

#################################

# Chamando ajuda para 'Get-ChildItem'
Get-Help -Name Get-ChildItem -Detailed

# Chamando módulos do PowerShell
Get-Module

# Instalando Az PowerShell
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery

# Define ExecutionPolicy para escopo do usuário atual apenas
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Atualiza um módulo do PowerShell
Update-Module -Name Az

#################################

#################################
#                               #
# Microsoft Azure PowerShell    #
#                               #
#################################

#################################

# Conecta com Azure
Connect-AzAccount

# Trabalhando com inscrições
Set-AzContext -Subscription '00000000-0000-0000-0000-000000000000'


# Imprimir lista de todo Grupo de Recursos em uma inscrição ativa.
Get-AzResourceGroup

# Imprimindo de maneira formatada
Get-AzResourceGroup | Format-Table

# Criando um grupo de recursos
New-AzResourceGroup -Name <name> -Location <location>

# Verificando recursos:
Get-AzResource

# Verificando recurso de maneira formatada
Get-AzResource | Format-Table

# Especificando recurso a ser mostrado
Get-AzResource -ResourceGroupName ExerciseResources

#################################

#################################
#                               #
#     Azure Virutal Machine     #
#                               #
#################################

#################################


New-AzVm # Cria nova máquina virtual na Microsoft Azure
    -ResourceGroupName <resource group name> # Resource Group no qual nova VM será inserida
    -Name <machine name> # Nome da VM na Azure
    -Credential <credentials object> # Um objeto contendo nome de usuário e senha de Administrador dentro da VM (Get-Credential) 
    -Location <location> # Informações de localização geográfica de onde será inserida VM
    -Image <image name> # Imagem do Sistema Operacional para usar na VM. tipicamente um distro Linux ou Windows Server

# Também pode ser utilizados seguintes comando para atingir mesmso resultado:
Set-AzVMOperatingSystem
Set-AzVMSourceImage
Add-AzVMNetworkInterface
Set-AzVMOSDisk


# Exemplo de comando criando máquina virtual e atribuindo à um grupo
New-AzVM -Name MyVm -ResourceGroupName ExerciseResources -Credential (Get-Credential) ...


# Solicitando Status de uma VM na Azure
$vm = Get-AzVM -Name MyVM -ResourceGroupName ExerciseResources

# atualizando/realizando mudanças na VM na Azure
$ResourceGroupName = "ExerciseResources"
$vm = Get-AzVM -Name MyVM -ResourceGroupName $ResourceGroupName
$vm.HardwareProfile.vmSize = "Standard_DS3_v2"

Update-AzVM -ResourceGroupName $ResourceGroupName -VM $vm