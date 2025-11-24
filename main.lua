-- main.lua - carrega tudo

local ui = require(script.ui)
local esp = require(script.esp)
local aimbot = require(script.aimbot)
local silent = require(script.silent)

local espBtn = ui.MakeButton("ESP", 60)
local aimBtn = ui.MakeButton("AIMBOT", 110)
local silentBtn = ui.MakeButton("SILENT", 160)

espBtn.MouseButton1Click:Connect(function()
    esp:Toggle()
    espBtn.Text = esp.Enabled and "ESP ON" or "ESP OFF"
    espBtn.BackgroundColor3 = esp.Enabled and Color3.fromRGB(0,140,0) or Color3.fromRGB(60,60,60)
end)

aimBtn.MouseButton1Click:Connect(function()
    aimbot:Toggle()
    aimBtn.Text = aimbot.Enabled and "AIMBOT ON" or "AIMBOT OFF"
    aimBtn.BackgroundColor3 = aimbot.Enabled and Color3.fromRGB(0,140,0) or Color3.fromRGB(60,60,60)
end)

silentBtn.MouseButton1Click:Connect(function()
    silent:Toggle()
    silentBtn.Text = silent.Enabled and "SILENT ON" or "SILENT OFF"
    silentBtn.BackgroundColor3 = silent.Enabled and Color3.fromRGB(0,140,0) or Color3.fromRGB(60,60,60)
end)
