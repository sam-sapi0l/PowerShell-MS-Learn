# Introdução à PowerShell

# Verifica instalação do PowerShell
$PSVersionTable

# Imprime versão do PowerShell
$PSVersionTable.PSVersion

# Obtendo ajuda no PowerShell
Get-Help -Name Get-FileHash

# help command
help Get-FileHash

# 2° Output
help Get-FileHash -Examples

# Descobrindo Objetos utilizando Get-Member
Get-Process -Name 'nome-do-processo' | Get-Member

# Select-Object commandlet
Get-Process -Name 'nome-do-processo' | Get-Member | Select-Object Name, MemberType

# Get-Process irá imprimir na tela todos os processos ativos no PC
Get-Process
