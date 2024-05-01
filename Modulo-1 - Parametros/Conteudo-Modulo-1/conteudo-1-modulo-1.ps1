# declaro um parametro
Param()

# CreateFile.ps1

Param(
    $Path
)
New-Item $Path # Cria um novo arquivo no $Path
Write-Host "File $Path foi criado"


# Utilizando parametro

# Para chamar um script com um parametro, é necessário prover um nome e um valor.
# Dizendo que o script abaixo é chamado CreateFile.ps1

# Chamando script em PowerShell
./CreateFile.ps1 -Pth './novoArquivo.txt' # Arquivo ./newfile.txt foi criado
./CreateFile.ps1 -Path './outroArquivo.txt' # Arquivo ./outroArquivo.txt foi criado

# Por conta do uso do parametro, nao é necessario mudar o arquivo do script quando quiser chamar o arquivo de outro nome

# Melhoria de parametros:
# É estritamente necessário?
# Quais valores são permitidos?
# Aceita mais de um tipo de valor? Parametro aceita qualquer tipo como string, boolean, inteiro e objeto?
# Tem valor padrão? Posso omitir o valor e utilizar valores padrão?
# Tem como melhorar experiencia? Tem mensagem de ajuda/help message?
#


# Escolha uma abordagem
# Utilize if/else. O constructor if/Else permite checar o valor de um parametro e depois decidir o que fazer.
# Exemplo:

Param(
    $Path
)

If (-Not $Path -eq ''){
    New-Item $Path
    Write-Host "Arquivo criado no path $Path"
}Else {
    Write-Error "Path não pode ficar vazio!"
}

# Script irá Write-Error caso não prover um valor para $Path

# Utilize o Parameter[] decorator. Uma melhor maneira, que requer menos digitação, é utlizando o Parameter[] decorator
# Exemplo 

Param(
    [Parameter(Mandatory)]
    $Path
)
New-item $Path
Write-Host "Arquivo criado no caminho $Path"


# Caso executar este script e omitir o valor $path, irá acabar promptando dialog para o valor
# Quando executarmos o script, podemos melhorar decorator provendo uma mensagem de ajuda que usuários visualizarão quando executá-lo


Param(
    [Parameter(Mandatory, HelpMessage = "Insira um caminho válido.")]
    $Path
)
New-item $Path
Write-Host "Arquivo criado no caminho $Path"

# Definindo tipo. Se definir um tipo a um paramentro, pode se dizer por exemplo que só aceita strings e não booleanos.
# Desta maneira, o usuário sabe o que esperar. Podemos definir um tipo ao parametro com precedencia entre [string]

Param(
    [string]$Path
)

# Nenhum destas três abordagens são exclusivas, podendo ser combinadas entre elas para tornar script mais seguro.