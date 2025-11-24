-- esp.lua - fake esp funcional visual

local utils = require(script.Parent.utils)

local esp = {}
esp.Enabled = false
esp.Objects = {}

local gui = game.Players.LocalPlayer.PlayerGui:WaitForChild("FakeCheatESP", 1)
if not gui then
    gui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
    gui.Name = "FakeCheatESP"
end

function esp:Toggle()
    self.Enabled = not self.Enabled

    if not self.Enabled then
        for _, obj in ipairs(self.Objects) do obj:Destroy() end
        self.Objects = {}
        return
    end

    task.spawn(function()
        while self.Enabled do
            local box = Instance.new("Frame", gui)
            box.Size = UDim2.new(0, 60, 0, 60)
            box.Position = utils:RandomPos()
            box.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            box.BorderSizePixel = 2

            table.insert(self.Objects, box)

            task.wait(0.3)
        end
    end)
end

return esp
