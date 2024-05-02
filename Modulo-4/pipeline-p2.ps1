# Formatting as late as possible // Formatando o mais tarde possível
Get-Process 'some-process' | Select-Object Name, CPU | Get-Member

# Formatando 
Get-Process 'some process' | Select-Object name, Cpu

# Caso formatado primeiro e depois utilizado Select-Object
# Temos seguinte situação:
Get-Process 'powershell' | Format-Table name, CPU | Select-Object Name, CPU 


