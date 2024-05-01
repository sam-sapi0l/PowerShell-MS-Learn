# Exercício
# Error Handling

Param(
    [switch]$Path = './app',
    [string]$DestinationPath = './'
)
if (-Not (Test-Path $Path))
{
    Throw "Diretório especificado $Path não existe. Informe um diretório existente."
}

$date = Get-Date -format "yyyy-MM-dd"
$DestinationFile = "$($DestinationPath + 'backup-' + $date + '.zip')"
If (-Not(Test-Path $DestinationFile))
{
    Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date + '.zip')"
    Write-host "Criado backup em $($DestinationPath + 'backup-' + $date)"
} Else {
    Write-Error "Backup de hoje já existente!"
}


# Implantando exigência utilizando try-catch

If ($PathIsWebApp -eq $True) {
    Try {
        $ContainsApplicationFiles = "$((Get-ChildItem $Path).Extension | Sort-Object -Unique)" -match '\.js|\.html|\.css'
        
        If ( -Not $ContainsApplicationFiles){
            Throw "Não é uma Aplicação Web"
        } else {
            Write-Host "Fonte OK, continuando..."
        }
    } Catch {
        Throw "Backup não criado devido: $($_.Exeception.Message)"
    }
}
