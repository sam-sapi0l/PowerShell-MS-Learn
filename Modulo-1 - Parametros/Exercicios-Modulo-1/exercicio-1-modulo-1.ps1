# Exercício Script de Backup

$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path './app' -CompressionLevel 'Fastest' -Destination "./backup-$date"
Write-Host "Created backup at $('./backup-' + $date +'.zip')"

# Neste script invoca Compress-Archive e utiliza três parametros:

# -Path é o diretório referente aos arquivos que é desejado comprimir (zipar)
# -CompressionLevel especifica quanto comprimir dos arquivos
# -DestinationPath é o caminho do arquivo comprimido resultante

# Adicionando parametro ao script
# Se adicionarmos parametros ao script, os usuarios poderão prover valores quando executarem.
# Adicionaremos parametro ao script de backup para habilitar configuração de localização dos arquivos a serem backupeados
# E o arquivo comprimido gerado

# Foram adicionados dois parâmetros ao script: $Path e $DestinationPath
# Também definido valor padrão para que usuários não precisem necessáriamente valores ao caminho

Param(
  [string]$Path = './app',
  [string]$DestinationPath = './'
)

#  Script com parâmentro ficará da seguinte maneira: 
Param(
  [string]$Path = './app',
  [string]$DestinationPath = './'
)
$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"