# Consultando processos que mais estão consumindo recursos da máquina
Get-Process | Where-Object CPU -gt 2 | Sort-Object CPU -Descending | Select-Object -First 3

# Filtering
Get-Process | Select-Object Name | Where-Object Name -eq 'name-of-process'

# Sempre melhor filtrar antes de formatar
Get-Process | Where-Object Name -eq 'name-of-process' | Select-Object Name

# Versão ainda mais otimizada da query de consulta
Get-Process -Name 'name-of-process' | Select-Object Name