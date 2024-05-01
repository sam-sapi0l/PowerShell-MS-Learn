# Error Handling - Lidando com Erros

# Terminanting error:
# Um erro deste tipo irá interromper a execução no linha onde ocorreu erro.
# Pode ser manejado utilizado try-catch ou trap.
# Se erro nao é remanejado, o script vai sair neste ponto e nenhuma declaração irá rodar.

# Non-Terminanting Error:
# Este tipo de erro irá notificar o usuário que algo está errado.
# Mas o script irá continuar.
# Pode ser atualizado para um terminating error.

# Manejando erros utilizando Try/Catch/Finally
# Try Block
Try {
    # Declaração. Por exemplo, chamada de um comando
    # Outra declaração. Por exemplo, assinalar uma variável.
}


# Try / Catch / Block
Try {
    # Faça algo com arquivo.
} Catch [System.IO.IOException]{
    Write-Host "Algo deu errado"
} Catch {
    # Coleta todos. Se não uma IOException mas algo a mais.
}


# Try / Catch / Finally block
Try {
    # Faça algo com arquivo.
} Catch [System.IO.IOException]{
    Write-Host "Algo deu errado"
} Catch {
    # Colega todos. Se não uma IOException mas algo a mais.
} Finally {
    # Limpa os recursos.
}

# Inspecionando Erros

# A message:
# Mensagem relatando o que ocorreu de errado.

# Stacktrace:
# O stacktrace diz sobre qual declaração foi executada antes do erro.

# The Offending row:
# Este objeto de exceção relata qual linha do script foi executada quando erro ocorreu. Util em situações de Debug

# $_ possui uma propriedade exception.

Try {
    # Faça algo com arquivo
} Catch [System.IO.IOException]{
    Write-Host "Algo IO deu errado: $($_.exception.message)"
} Catch {
    Write-Host "Algo mais deu errado: $($_.exception.message)"
}


# Raisinh Errors
# Chamando Erros

Try {
    Get-Content './file.txt' -ErrorAction Stop
} Catch {
    Write-Error "Arquivo não pôde ser encontrado."
}

# Business Rules
# Regras de Negócio

try{
    If ($Path -eq './forbidden')
    {
        Throw "Caminho não permitido"
    }
    # Continue
} Catch {
    Write-Error "$($_.exception.message)" # caminho não permitido
}
