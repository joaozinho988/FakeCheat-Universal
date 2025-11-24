-- ui.lua - painel visual do fake cheat

local utils = require(script.Parent.utils)

local ui = {}

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false

local panel = Instance.new("Frame", gui)
panel.Size = UDim2.new(0, 260, 0, 260)
panel.Position = UDim2.new(0, 20, 0, 120)
panel.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
panel.Active = true
panel.Draggable = true

local title = Instance.new("TextLabel", panel)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
title.TextColor3 = Color3.new(1,1,1)
title.Text = "FAKE CHEAT PANEL"
title.TextScaled = true

function ui.MakeButton(text, y)
    local btn = Instance.new("TextButton", panel)
    btn.Size = UDim2.new(1, -20, 0, 40)
    btn.Position = UDim2.new(0, 10, 0, y)
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    btn.TextColor3 = Color3.new(1,1,1)
    btn.TextScaled = true
    btn.Text = text .. " OFF"
    return btn
end

return ui
