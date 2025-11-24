-- silent.lua - fake silent aim (textos aparecendo)

local utils = require(script.Parent.utils)

local silent = {}
silent.Enabled = false

local gui = game.Players.LocalPlayer.PlayerGui

function silent:Toggle()
    self.Enabled = not self.Enabled

    if not self.Enabled then return end

    task.spawn(function()
        while self.Enabled do
            local txt = Instance.new("TextLabel", gui)
            txt.Text = "silent hit!"
            txt.TextColor3 = Color3.fromRGB(255, 255, 0)
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(0, 140, 0, 30)
            txt.Position = utils:RandomPos()
            txt.TextScaled = true

            task.delay(0.4, function() txt:Destroy() end)
            task.wait(0.07)
        end
    end)
end

return silent
