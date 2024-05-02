# Connect Commands indto a pipeline
# Get-Member retorna informação sobre objeto como: 
Get-Process | Get-Member

# Getting the full response
Get-Process zsh | Format-List -Property *

# Selecionando colunas específica
Get-Process zsh | Get-Member zsh -Name C*

# Melhorando output de consulta 
Get-Process zsh | Select-Object -Property Id, Name, CPU

# Sorting Object
Get-Process | Sort-Object -Descending -Property -Name

# Selecionando mais de uma propriedade de um objeto
Get-Process | Sort-Object -Descending -Property Name, CPU

# Expressão customizada
Get-Process 'powershell' | Sort-Object -Property@{Expression = "Name"; Descending = $True}, @{Expression = 'CPU'; Descendinhg =$false }