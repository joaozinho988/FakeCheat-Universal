-- utils.lua - funções auxiliares universais

local utils = {}

function utils:Notify(msg, color)
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Fake Cheat",
        Text = msg,
        Duration = 3
    })
end

function utils:RandomPos()
    return UDim2.new(0, math.random(80, 900), 0, math.random(80, 500))
end

return utils
