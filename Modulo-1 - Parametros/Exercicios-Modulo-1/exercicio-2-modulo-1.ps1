# Exercicio de Controle de Fluxo

# Adicionando uma checagem ao $Path
Param(
  [string]$Path = './app',
  [string]$DestinationPath = './'
)
If (-Not(Test-Path $Path))
{
    Throw "O caimnho $Path não existe, por favor especifique um caminho válido."
}
$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"


# Adicionando sanitização no $DestinationFile

Param(
  [string]$Path = './app',
  [string]$DestinationPath = './'
)
If (-Not(Test-Path $Path))
{
    Throw "O caimnho $Path não existe, por favor especifique um caminho válido."
}
$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"
If (-Not(Test-Path $DestinationPath))
{
    Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
    Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"
} Else {
    Write-Error "Today's backup already exists"
}

