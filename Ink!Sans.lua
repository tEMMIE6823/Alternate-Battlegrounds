-- GUI
local Funny = Instance.new("ScreenGui")
local Creator1 = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local Credits = Instance.new("TextLabel")
local Creator2 = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local Funny1 = Instance.new("TextLabel")
local Funny2 = Instance.new("TextLabel")
local XD1 = Instance.new("TextLabel")
local XD2 = Instance.new("TextLabel")
local Usernames = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")

--Properties:

Funny.Name = "Funny"
Funny.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Funny.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Creator1.Name = "Creator1"
Creator1.Parent = Funny
Creator1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Creator1.BackgroundTransparency = 1.000
Creator1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Creator1.BorderSizePixel = 0
Creator1.Position = UDim2.new(0.783613443, 0, 0.740243912, 0)
Creator1.Size = UDim2.new(0, 291, 0, 43)
Creator1.Font = Enum.Font.Arcade
Creator1.Text = "NightMare Hackers"
Creator1.TextColor3 = Color3.fromRGB(255, 255, 255)
Creator1.TextScaled = true
Creator1.TextSize = 14.000
Creator1.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(20, 55, 66)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 255, 255))}
UIGradient.Parent = Creator1

Credits.Name = "Credits"
Credits.Parent = Funny
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.822829127, 0, 0.70243907, 0)
Credits.Size = UDim2.new(0, 181, 0, 31)
Credits.Font = Enum.Font.Arcade
Credits.Text = "Credits"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextStrokeTransparency = 0.000
Credits.TextWrapped = true

Creator2.Name = "Creator2"
Creator2.Parent = Funny
Creator2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Creator2.BackgroundTransparency = 1.000
Creator2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Creator2.BorderSizePixel = 0
Creator2.Position = UDim2.new(0.789215684, 0, 0.778048754, 0)
Creator2.Size = UDim2.new(0, 276, 0, 53)
Creator2.Font = Enum.Font.Arcade
Creator2.Text = "ErrorScripter2.0"
Creator2.TextColor3 = Color3.fromRGB(255, 255, 255)
Creator2.TextScaled = true
Creator2.TextSize = 14.000
Creator2.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 141, 0))}
UIGradient_2.Parent = Creator2

Funny1.Name = "Funny1"
Funny1.Parent = Funny
Funny1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Funny1.BackgroundTransparency = 1.000
Funny1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Funny1.BorderSizePixel = 0
Funny1.Position = UDim2.new(0.00770309567, 0, 0.518292665, 0)
Funny1.Size = UDim2.new(0, 200, 0, 31)
Funny1.Font = Enum.Font.Arcade
Funny1.Text = "Dodge Bar:"
Funny1.TextColor3 = Color3.fromRGB(255, 255, 255)
Funny1.TextScaled = true
Funny1.TextSize = 14.000
Funny1.TextWrapped = true

Funny2.Name = "Funny2"
Funny2.Parent = Funny
Funny2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Funny2.BackgroundTransparency = 1.000
Funny2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Funny2.BorderSizePixel = 0
Funny2.Position = UDim2.new(0.147759125, 0, 0.518292665, 0)
Funny2.Size = UDim2.new(0, 200, 0, 31)
Funny2.Font = Enum.Font.Arcade
Funny2.Text = "N/A"
Funny2.TextColor3 = Color3.fromRGB(255, 255, 255)
Funny2.TextScaled = true
Funny2.TextSize = 14.000
Funny2.TextWrapped = true
Funny2.TextXAlignment = Enum.TextXAlignment.Left

XD1.Name = "XD1"
XD1.Parent = Funny
XD1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XD1.BackgroundTransparency = 1.000
XD1.BorderColor3 = Color3.fromRGB(0, 0, 0)
XD1.BorderSizePixel = 0
XD1.Position = UDim2.new(0.00770309567, 0, 0.480487794, 0)
XD1.Size = UDim2.new(0, 200, 0, 31)
XD1.Font = Enum.Font.Arcade
XD1.Text = "Phase:"
XD1.TextColor3 = Color3.fromRGB(255, 255, 255)
XD1.TextScaled = true
XD1.TextSize = 14.000
XD1.TextWrapped = true

XD2.Name = "XD2"
XD2.Parent = Funny
XD2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XD2.BackgroundTransparency = 1.000
XD2.BorderColor3 = Color3.fromRGB(0, 0, 0)
XD2.BorderSizePixel = 0
XD2.Position = UDim2.new(0.116946802, 0, 0.480487794, 0)
XD2.Size = UDim2.new(0, 200, 0, 31)
XD2.Font = Enum.Font.Arcade
XD2.Text = "1"
XD2.TextColor3 = Color3.fromRGB(255, 255, 255)
XD2.TextScaled = true
XD2.TextSize = 14.000
XD2.TextWrapped = true
XD2.TextXAlignment = Enum.TextXAlignment.Left

Usernames.Name = "Usernames"
Usernames.Parent = Funny
Usernames.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Usernames.BorderColor3 = Color3.fromRGB(0, 0, 0)
Usernames.BorderSizePixel = 0
Usernames.Position = UDim2.new(0.287815124, 0, 0.0146341473, 0)
Usernames.Size = UDim2.new(0, 654, 0, 50)
Usernames.Font = Enum.Font.DenkOne
Usernames.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Usernames.PlaceholderText = "Target Username:"
Usernames.Text = ""
Usernames.TextColor3 = Color3.fromRGB(255, 255, 255)
Usernames.TextSize = 21.000
Usernames.TextWrapped = true

UICorner.Parent = Usernames

-- Script
local stand = game.Workspace.Dummys.NoStaminaDummy
local hrp = stand.HumanoidRootPart
local standh = stand.Humanoid

local Anim2 = Instance.new("Animation")
Anim2.AnimationId = "rbxassetid://11945543130"
local k2 = standh:LoadAnimation(Anim2)
k2:Play()
k2:AdjustSpeed(1)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://11945543130"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

game:GetObjects("rbxassetid://14004124573")[1].Parent = game.Workspace
game.Workspace.Brush.Weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
-- X!Gaster Effects
stand.Head.Display:Destroy()

game:GetObjects("rbxassetid://14048686014")[1].Parent = game.Workspace
game.Workspace.Stand.Head.Health.Parent = stand.Head
game.Workspace.Stand.Head.chat.Parent = stand.Head
game.Workspace.Stand.Torso.a.Parent = stand.Torso

game:GetObjects("rbxassetid://14004118504")[1].Parent = game.Workspace
game.Workspace.InkSans.Torso.Aura.Parent = game.Players.LocalPlayer.Character.Torso
game.Players.LocalPlayer.Character.Torso.Aura.Rate = 32

local SansAnimations = game.ReplicatedStorage.Animations.Sans
local SansCombo1 = SansAnimations.Combo1
local SansCombo2 = SansAnimations.Combo2
local SansCombo3 = SansAnimations.Combo3
local SansCombo4 = SansAnimations.Combo4
local SansCombo5 = SansAnimations.Combo5
local SansBlockStart = SansAnimations.BlockStart

local function UXBUIUP_fake_script() 
	local script = Instance.new('LocalScript', game.Players.LocalPlayer.Backpack)
	local stand = game.Workspace.Dummys.NoStaminaDummy
	local hrp = stand.HumanoidRootPart
	while true do
		hrp.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-3, 1.5, 3)
		wait(0.00001)
	end
end
coroutine.wrap(UXBUIUP_fake_script)()

-- Block Animation
SansBlockStart.AnimationId = "rbxassetid://10005531003"

--LMB animation
SansCombo1.AnimationId = "rbxassetid://12815496330"
SansCombo2.AnimationId = "rbxassetid://12815493047"
SansCombo3.AnimationId = "rbxassetid://12815507477"
SansCombo4.AnimationId = "rbxassetid://12815495416"
SansCombo5.AnimationId = "rbxassetid://13171055151"

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "p" and game.Players.LocalPlayer:WaitForChild("PlayerGui").Funny.XD2.Text == "1" then
	game.Players.LocalPlayer:WaitForChild("PlayerGui").Funny.XD2.Text = "2"
	local Anim = Instance.new("Animation")
	Anim.AnimationId = "rbxassetid://13045731482"
	local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
	k:Play()
	k:AdjustSpeed(1)
	wait(6)
    game.Players:Chat(("[ Ink!Sans ] You... Megalomaniac you dont deverse Any Chance to live"))
	wait(5)
	game.Players:Chat(("[Ink!Sans]\n People Like you SHOULD LIVE IN HELL\n\n\n                                  +Special Attack"))
end
end)