# Flow Control // Controle de Fluxo
# Flow Control ou Controle de Fluxo se refere a como o código é executado. 
# Tem diversos construtores disponíveis para ajudar com controle de fluxo.
# O código pode rodar todas as declarações (statements) ou apenas algumas delas.
# Pode repetir certas declarações até encontrar determinada condição

############################################################################

# Sanitize Input (Sanitizar Entrada):
# Se utilizarmos parametro em um script, será necessário certificar que os parametros possuam valores razoáveis para script funcionar como planejado.

# Controle do Fluxo de Execução:
# A técnica previamente explicada garante que será informado e corretamente entrada dados corretos.
# Esta técnica é mais sobre decidir como rodar código. O valor pode determinar qual grupo de declarações executar.

# 3 Iterar sobre dados:
# Em alguns casos, os dados formam um array (vetor), que é uma forma de dado que contém muitos itens
# Para tal dado, talvez possa ser necessário examinar cada item e desempenhar uma operação em cada uma.
# Muitos construtores em PowerShel podem ajudar no proceso.

#############################################################################

# Administrando entrada e controle de execução utilizando If, ElseIf e Else
# Utilizamos construtor If para determinar se uma expressão é True ou False. 
# Dependendo dessa determinação, poderá ser executado declaração definida pelo construtor If.
# Exemplo de Sintaxe:

If (<Expressão avaliada em True ou False>)
{
    # Declaração que executa apenas se expressão precedente é $True
}

##############################################################################

# Operadores:
# PowerShell possui dois parâmetros nativos para determinar se uma expressão é True ou False:

# $True indica que uma expressão é verdadeira (True)
# $False indica que uma expressão é falsa (False)

$Value = 3
If ($Value -le 0)
{
    Write-Host "Is Negative"
}


# Utilizando Else

$Value = 3
If ($Value -le 0)
{
    Write-Host "Is Negative"
}Else {
    Write-Host "Is Postive"
}


# Utilizando ElseIf
# _FullyTax.ps1
# Possiveis valores: 'Menor', 'Adulto', 'Idoso'
$Status = 'Minor'
If ($Status -eq 'Minor')
{
    Write-Host $False
} ElseIf ($Status -eq 'Adult'){
    Write-Host $true
} Else {
    Write-Host $False
}

