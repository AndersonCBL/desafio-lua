--[[

Este projeto consiste em criar um cartão descritivo de um jogo de RGP de cartas, 
com personagem baseado em lendas e figura mitológica do folclore brasileiro.

]]

os.execute("chcp 65001") -- Executar o código antes para reconhecer o emoji
os.execute("cls") -- Limpar a tela para não mostrar o comando anterior

-- Criatura
local monsterName = "CURUPIRA"
local foto = "👩‍🦱"
local description = "Uma figura mitológica do folclore brasileiro. \n| Anão de cabelos vermelhos,com pés virados para trás, \n| que protege as florestas e os animais de caçadores e desmatadores. \n| Ele usa suas pegadas ao contrário para desorientar \n| os invasores e garantir a preservação da natureza. "
local emoji = "🔥"
local sound = "Fiiiiiiiu"
local favoriteTime = "Noturno"
local habitat = "Floresta Amazônica"

-- Atributos
local forcekAttribute = 3
local agilityAttribute = 8
local intelligenceAttribute = 10
local charismaAttribute = 2
local resistanceceAttribute = 3
local willpowerAttribute = 9

-- Função que determina o valor do atributo do personagem
local function getProgressBar(attribute)
    local red = "🔴"
    local orange = "🟠"
    local yellow = "🟡"
    local green = "🟢"
    local emptyChar = "⚫"

    local result = ""
    for i = 1, 10, 1 do
       if i <= attribute then
        if i <= 2 then
            result = result .. red
        elseif i <= 5 then
            result = result .. orange
        elseif i <=7 then
            result = result .. yellow
        elseif i <= 10 then
            result = result .. green
        end
       else
        result = result .. emptyChar
       end
    end
    return result
end

-- Cartão
print("************************************************************************")
print("| * " .. monsterName .. " *")
print("| " .. description)
print("| ----------------------------------------------------------------------")
print("| Imagens: " .. foto)
print("| Habitat: " .. habitat)
print("| Hábito: " .. favoriteTime)
print("| ----------------------------------------------------------------------")
print("| ")
print("| Atributos")
print("|    Força:            " .. getProgressBar(forcekAttribute))
print("|    Agilidade:        " .. getProgressBar(agilityAttribute))
print("|    Inteligência:     "   .. getProgressBar(intelligenceAttribute))
print("|    Carisma:          "   .. getProgressBar(charismaAttribute))
print("|    Resistência:      " .. getProgressBar(resistanceceAttribute))
print("|    Força de vontade: " .. getProgressBar(willpowerAttribute))
print("| ")
print("************************************************************************")
