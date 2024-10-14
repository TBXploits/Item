lplr = game.Players.LocalPlayer
local F = Instance.new("Tool")
local H = Instance.new("Part", F)
local Fl = Instance.new("Part", F)
local Hd = Instance.new("Part", F)
local B = Instance.new("Part", F)
local W1 = Instance.new("WeldConstraint", Fl)
local W2 = Instance.new("WeldConstraint", Hd)
local W3 = Instance.new("WeldConstraint", B)
local A1 = Instance.new("Attachment", Fl)
local A2 = Instance.new("Attachment", Hd)
local A3 = Instance.new("Attachment", B)

F.Name = "Flashlight"
F.Parent = lplr.Backpack
F.RequiresHandle = false

H.Name = "Handle"
H.CanCollide = false
H.Size = Vector3.new(1.2, 2, 4)
H.Position = Vector3.new(-46, 0.6, -25)
H.Transparency = 1

B.Name = "Base"
B.CanCollide = false
B.Size = Vector3.new(0.8, 0.8, 2)
B.Position = Vector3.new(-46.1, 0.4, -25.001)
B.Color = Color3.fromRGB(30, 30, 30)
B.Material = Enum.Material.SmoothPlastic

Hd.Name = "Head"
Hd.CanCollide = false
Hd.Size = Vector3.new(1.4, 1.4, 0.5)
Hd.Position = Vector3.new(-46.1, 0.4, -26.25)
Hd.Color = Color3.fromRGB(30, 30, 30)
Hd.Material = Enum.Material.SmoothPlastic

Fl.Name = "Light"
Fl.CanCollide = false
Fl.Size = Vector3.new(1, 1, 0.001)
Fl.Position = Vector3.new(-46.1, 0.4, -26.5)
Fl.Color = Color3.fromRGB(255, 255, 0)
Fl.Material = Enum.Material.SmoothPlastic

W1.Part0 = B
W1.Part1 = H
W2.Part0 = Hd
W2.Part1 = H
W3.Part0 = Fl
W3.Part1 = H

local isOn = false
local Sl = Instance.new("SpotLight", Fl)
Sl.Brightness = 2
Sl.Angle = 35
Sl.Range = 100
Sl.Enabled = false

F.Activated:Connect(function()
    isOn = not isOn
    Sl.Enabled = isOn
end)
