-- aimbot.lua - fake aimbot (círculo se movendo)

local utils = require(script.Parent.utils)

local aimbot = {}
aimbot.Enabled = false

local gui = game.Players.LocalPlayer.PlayerGui
local dot = Instance.new("Frame", gui)
dot.Size = UDim2.new(0, 18, 0, 18)
dot.BackgroundColor3 = Color3.fromRGB(0,255,0)
dot.Visible = false

function aimbot:Toggle()
    self.Enabled = not self.Enabled

    if not self.Enabled then
        dot.Visible = false
        return
    end

    dot.Visible = true

    task.spawn(function()
        while self.Enabled do
            dot.Position = utils:RandomPos()
            task.wait(0.09)
        end
    end)
end

return aimbot
