-- Credits to Cool ppl who made it: [Green][KingGreen][AdamHack][NormalSkided]
-- turn off the music when using the script

game:GetObjects("rbxassetid://14041103553")[1].Parent = game.Workspace
game.Workspace.Rig.Highlight.Parent = game.Players.LocalPlayer.Character
game.Workspace.Rig.Head.Eye.Parent = game.Players.LocalPlayer.Character.Head
game.Workspace.Rig.Head.HH.Parent = game.Players.LocalPlayer.Character.Head
game.Workspace.Rig.ZZ.QQ.Parent = game.Players.LocalPlayer.Character["Left Arm"]
game.Workspace.Rig.Torso.EE.Parent = game.Players.LocalPlayer.Character.Torso
game.Workspace.Rig.Torso.AU.Parent = game.Players.LocalPlayer.Character.Torso
game.Workspace.Rig.Torso.TpVFX.Parent = game.Players.LocalPlayer.Character.Torso
game.Workspace.Rig.Torso.WW.Parent = game.Players.LocalPlayer.Character.Torso

-- Instances:

local SS = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Wobble = Instance.new("Frame")
local Wobble_2 = Instance.new("Frame")
local wobble2 = Instance.new("Frame")
local wobble2_2 = Instance.new("Frame")
local wobble2_3 = Instance.new("Frame")
local glow = Instance.new("ImageLabel")
local Attack = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local DD = Instance.new("TextLabel")
local Defense = Instance.new("TextLabel")
local Farmer = Instance.new("TextLabel")
local GG = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")

--Properties:

SS.Name = "SS"
SS.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = SS
Frame.BackgroundColor3 = Color3.fromRGB(65025, 65025, 65025)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(4335, 4335, 4335)
Frame.Size = UDim2.new(1, 0, 1, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.699999988, -3, 0.800000012, 8)
TextLabel.Rotation = 1.661
TextLabel.Size = UDim2.new(0.300000012, 0, 0.200000003, 0)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "Prison"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 24.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(17, 17, 17)
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Right
TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

Wobble.Name = "Wobble"
Wobble.Parent = SS
Wobble.BackgroundColor3 = Color3.fromRGB(63, 0, 0)
Wobble.BackgroundTransparency = 0.500
Wobble.BorderColor3 = Color3.fromRGB(255, 0, 0)
Wobble.BorderSizePixel = 2
Wobble.Position = UDim2.new(-0.0896246359, 0, 0.917320251, 0)
Wobble.Rotation = 0.831
Wobble.Size = UDim2.new(1.10000002, 0, 1.10000002, 0)

Wobble_2.Name = "Wobble"
Wobble_2.Parent = SS
Wobble_2.BackgroundColor3 = Color3.fromRGB(63, 0, 0)
Wobble_2.BackgroundTransparency = 0.500
Wobble_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
Wobble_2.BorderSizePixel = 2
Wobble_2.Position = UDim2.new(-0.321560025, 0, -1.46522129, 0)
Wobble_2.Rotation = 0.831
Wobble_2.Size = UDim2.new(0.354070932, 0, 3.13625932, 0)

wobble2.Name = "wobble2"
wobble2.Parent = SS
wobble2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wobble2.BackgroundTransparency = 0.500
wobble2.BorderColor3 = Color3.fromRGB(63, 0, 0)
wobble2.BorderSizePixel = 2
wobble2.Position = UDim2.new(-0.0888426304, 0, 0.97567302, 0)
wobble2.Rotation = -0.708
wobble2.Size = UDim2.new(1.10000002, 0, 0.135833338, 0)

wobble2_2.Name = "wobble2"
wobble2_2.Parent = SS
wobble2_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wobble2_2.BackgroundTransparency = 0.500
wobble2_2.BorderColor3 = Color3.fromRGB(63, 0, 0)
wobble2_2.BorderSizePixel = 2
wobble2_2.Position = UDim2.new(0.959607601, 0, -1.45484173, 0)
wobble2_2.Rotation = -0.708
wobble2_2.Size = UDim2.new(0.569972932, 0, 2.99472284, 0)

wobble2_3.Name = "wobble2"
wobble2_3.Parent = SS
wobble2_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wobble2_3.BackgroundTransparency = 0.500
wobble2_3.BorderColor3 = Color3.fromRGB(63, 0, 0)
wobble2_3.BorderSizePixel = 2
wobble2_3.Position = UDim2.new(-0.0888426304, 0, -0.0439644456, 0)
wobble2_3.Rotation = -0.708
wobble2_3.Size = UDim2.new(1.10000002, 0, 0.135833338, 0)

glow.Name = "glow"
glow.Parent = SS
glow.BackgroundTransparency = 1.000
glow.Position = UDim2.new(0.0260000005, 0, -0.234999999, 0)
glow.Image = "rbxassetid://2344870656"
glow.ImageColor3 = Color3.fromRGB(255, 0, 0)

Attack.Name = "Attack"
Attack.Parent = SS
Attack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Attack.BackgroundTransparency = 1.000
Attack.Position = UDim2.new(0.173029631, 0, 0.663105011, 0)
Attack.Size = UDim2.new(0, 240, 0, 32)
Attack.Font = Enum.Font.Arcade
Attack.Text = "N/A"
Attack.TextColor3 = Color3.fromRGB(255, 0, 0)
Attack.TextScaled = true
Attack.TextSize = 14.000
Attack.TextStrokeTransparency = 0.000
Attack.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = SS
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(0.194355577, 0, 0.0905974507, 0)
Credits.Size = UDim2.new(0, 543, 0, 54)
Credits.Font = Enum.Font.Arcade
Credits.Text = "Credit: [Green][KingGreen][AdamHack][NormalSkided]"
Credits.TextColor3 = Color3.fromRGB(255, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextStrokeTransparency = 0.000
Credits.TextWrapped = true

DD.Name = "DD"
DD.Parent = SS
DD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DD.BackgroundTransparency = 1.000
DD.Position = UDim2.new(0.0703392923, 0, 0.710846066, 0)
DD.Size = UDim2.new(0, 240, 0, 32)
DD.Font = Enum.Font.Arcade
DD.Text = "Defense:"
DD.TextColor3 = Color3.fromRGB(255, 0, 0)
DD.TextScaled = true
DD.TextSize = 14.000
DD.TextStrokeTransparency = 0.000
DD.TextWrapped = true

Defense.Name = "Defense"
Defense.Parent = SS
Defense.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Defense.BackgroundTransparency = 1.000
Defense.Position = UDim2.new(0.201159686, 0, 0.710846066, 0)
Defense.Size = UDim2.new(0, 240, 0, 32)
Defense.Font = Enum.Font.Arcade
Defense.Text = "N/A"
Defense.TextColor3 = Color3.fromRGB(255, 0, 0)
Defense.TextScaled = true
Defense.TextSize = 14.000
Defense.TextStrokeTransparency = 0.000
Defense.TextWrapped = true

Farmer.Name = "Farmer"
Farmer.Parent = SS
Farmer.BackgroundTransparency = 1.000
Farmer.Position = UDim2.new(0.479999989, -8, 0.866999984, -8)
Farmer.Rotation = -1.416
Farmer.Size = UDim2.new(0, 42, 0, 42)
Farmer.Font = Enum.Font.Arcade
Farmer.Text = "Unknow Of The Ruler"
Farmer.TextColor3 = Color3.fromRGB(63, 0, 0)
Farmer.TextSize = 60.000
Farmer.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
Farmer.TextStrokeTransparency = 0.000

GG.Name = "GG"
GG.Parent = SS
GG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GG.BackgroundTransparency = 1.000
GG.Position = UDim2.new(0.0444265306, 0, 0.66159445, 0)
GG.Size = UDim2.new(0, 240, 0, 32)
GG.Font = Enum.Font.Arcade
GG.Text = "Attack:"
GG.TextColor3 = Color3.fromRGB(255, 0, 0)
GG.TextScaled = true
GG.TextSize = 14.000
GG.TextStrokeTransparency = 0.000
GG.TextWrapped = true

TextLabel_2.Parent = SS
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.218365639, 0, 0.805818677, 0)
TextLabel_2.Size = UDim2.new(0, 240, 0, 32)
TextLabel_2.Font = Enum.Font.Arcade
TextLabel_2.Text = "Character: Unknow Of The Ruler"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeTransparency = 0.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = SS
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.045068711, 0, 0.75812012, 0)
TextLabel_3.Size = UDim2.new(0, 387, 0, 32)
TextLabel_3.Font = Enum.Font.Arcade
TextLabel_3.Text = "Custom Character"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextStrokeTransparency = 0.000
TextLabel_3.TextWrapped = true

-- Scripts:

local function NVKPJUQ_fake_script() -- SS.Music 
	local script = Instance.new('LocalScript', SS)

	local song = Instance.new("Sound")
	
	song.Parent = game.Players.LocalPlayer.Backpack
	song.Volume = 2.5
	song.Playing = true
	song.Looped = true
	song.SoundId = "rbxassetid://7091804797" 
	song.Name = "Cool Music"
end
coroutine.wrap(NVKPJUQ_fake_script)()
local function DZZNMO_fake_script() -- SS.funny2 
	local script = Instance.new('LocalScript', SS)

	
	game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas:Destroy()
	local TweenService = game:GetService("TweenService")
	local Display = script.Parent.Farmer
	Display.Rotation = 4
	local part = Display
	local Info = TweenInfo.new(--- overwrite
		1,                              --Length (seconds)
		Enum.EasingStyle.Sine,          --Easing Style
		Enum.EasingDirection.InOut,       --Easing Direction
		-1,                             --Times Repeated
		true,                           --reversed
		0                               --deşau
	)
	local Goals = {
		Rotation = -4
	}
	local nametween = TweenService:Create(Display, Info, Goals)
	nametween:Play()
end
coroutine.wrap(DZZNMO_fake_script)()
local function MOEYD_fake_script() -- SS.funny 
	local script = Instance.new('LocalScript', SS)

	local Defense = script.Parent.Defense
	local Attack = script.Parent.Attack
	
	local Att = game.Players.LocalPlayer.Character.Data.Attack
	local Def = game.Players.LocalPlayer.Character.Data.Defense
	
	Defense.Text = Def.Value
	Attack.Text = Att.Value
	
	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "r" then
			wait(0.05)
			game.Players.LocalPlayer.Character.Torso.TpVFX.ParticleEmitter.Rate = "9999"
			local player = game.Players.LocalPlayer
			local char = player.Character
			local sound = Instance.new('Sound',char.Head)
			local id = 5465935919
			sound.Volume = 5
			sound.SoundId = 'rbxassetid://'..id
			sound:Play()
			wait(0.2)
			game.Players.LocalPlayer.Character.Torso.TpVFX.ParticleEmitter.Rate = "0"
		end
	end)
	
end
coroutine.wrap(MOEYD_fake_script)()
repeat wait()
until game.Players.LocalPlayer.Character.Data.Health.Value <= 0
spawn(function()
game.Players.LocalPlayer.Character.Torso.WW.ParticleEmitter.Rate = "9999"
wait(0.05)
game.Players.LocalPlayer.Character.Torso.TpVFX.ParticleEmitter.Rate = "9999"
local player = game.Players.LocalPlayer
local char = player.Character
local sound = Instance.new('Sound',char.Head)
local id = 5648455728
sound.Volume = 15
sound.SoundId = 'rbxassetid://'..id
sound:Play()
end)