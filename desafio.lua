os.execute("chcp 65001") -- Executar o código antes para reconhecer o emoji
os.execute("cls")

-- Criatura
local monsterName = "Creeper"
local description = "Um monstro furtivo com temperamento explosivo"
local emoji = "💣"
local sound = "Tsssssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

-- Função que recebe um atributo e retorna barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⚪"
    local emptyChar = "⚫"

    local result = ""
    for i = 1, 10, 1 do
       if i <= attribute then
        result = result .. fullChar
       else
        result = result .. emptyChar
       end
    end
    return result
end

-- Cartão
print("**************************************************************")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horário Favorito: " .. favoriteTime)
print("| ")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         "   .. getProgressBar(lifeAttribute))
print("|    Velocidade:   "   .. getProgressBar(speedAttribute))
print("|    Inteligência: " .. getProgressBar(inteligenceAttribute))
print("| ")
print("**************************************************************")
