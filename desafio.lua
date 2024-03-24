--[[

Nome da criatura
Descricao
Som que faz
Atributos
....Ataque
....Defesa
....Vitalidade
....Velocidade
...Inteligencia
Habilidades
    Furtividade
    Explosao

====================================================
/
/   CREEPER
/   Um monstro muito sagaz que explode na sua cara.
/
/   Som: Tsssssss
/
/   Atributos:
/       Ataque: ########00
/       Defesa: ##00000000
/       ...
/
====================================================


]]

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com temperamento explosivo."
local emoji = "💥"
local sound = "Tsssssss"
local favoriteTime = "🌙"
local item = "polvora"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

-- funcao que recebe um atributo e nos retorna uma barra de progresso / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "🔳"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
            -- quadradrinho cheio
            -- ⬜⬜⬜⬜⬜⬜
        else
            result = result .. emptyChar

            -- quadradinho vazio
            -- 🔳🔳🔳🔳🔳🔳
        end
    end
    return result
end


-- Cartao
print("==================================================")
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| ")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horario Favorito: " .. favoriteTime)
print("| ")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar (attackAttribute))
print("|    Defesa:       " .. getProgressBar (defenseAttribute))
print("|    Vida:         " .. getProgressBar (lifeAttribute))
print("|    Velocidade:   " .. getProgressBar (speedAttribute))
print("|    Inteligencia: " .. getProgressBar (inteligenceAttribute))
print("| ")
print("==================================================")
