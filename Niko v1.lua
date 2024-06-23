-- Niko v1 
-- effects, idea and ect by Errorscripter2.0
-- script coding from Roblox studio to lua, welding, and ect by NightMare Hackers/AdamHack 
-- Sharing the Niko Script By King Dream from soulshatters which helped us make some parts of script by NormalSkidded

game.Players.LocalPlayer.Character.Head.Display.Frame.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0) 
game.Players.LocalPlayer.Character.Head.Display.Frame.TextLabel.Text = "Niko v1"

local LKnife = game.Players.LocalPlayer.Character.LKnife
local RKnife = game.Players.LocalPlayer.Character.RKnife
LKnife:Destroy()
RKnife:Destroy()

local Plr = game.Players.LocalPlayer.Character
game:GetObjects("rbxassetid://13850515158")[1].Parent = game.Workspace
game:GetObjects("rbxassetid://9786677981")[1].Parent = game.Workspace

game.Workspace.Niko.Highlight.Parent = Plr
game.Workspace.Niko.Head.Aura.Parent = Plr.Head
game.Workspace.Niko["Left Arm"].AU.Parent = Plr["Left Arm"]
game.Workspace.Niko["Left Arm"].Aura.Parent = Plr["Left Arm"]
game.Workspace.Niko["Right Arm"].Aura.Parent = Plr["Right Arm"]
game.Workspace.Niko["Right Arm"].AU.Parent = Plr["Right Arm"]
game.Workspace.Niko["Left Leg"].Aura.Parent = Plr["Left Leg"]
game.Workspace.Niko["Right Leg"].Aura.Parent = Plr["Right Leg"]
game.Workspace.Niko.Torso.Aura.Parent = Plr.Torso
game.Workspace.Niko.Torso.Ligh.Parent = Plr.Torso
game.Workspace.Niko.HumanoidRootPart.Attachment.Parent = Plr.HumanoidRootPart

-- Normal
--game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://11231243775"
--game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://11231244846"
--game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11231246872"
--game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11231248372"
--game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://11231252598"

game.Workspace.CoolSwords.Trident.CanCollide = false
game.Workspace.CoolSwords.Spear1.CanCollide = false

local phase = Instance.new('NumberValue')
phase.Parent = game.Players.LocalPlayer.Character
phase.Value = 0
phase.Name = 'weapon'

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "p" then
	if game.Players.LocalPlayer.Character.weapon.Value == 0 then
		game.Players:Chat(("[Niko]\n Equip_item = Spear\n\n\n                                  +New Animations"))
		game.Workspace.CoolSwords.Spear1.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
		game.Players.LocalPlayer.Character.weapon.Value = 1
		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://9735418770"
		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://9735419615"
		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://9735638973"
		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://9735640641"
		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://9148580331"
	elseif game.Players.LocalPlayer.Character.weapon.Value == 1 then
		game.Players:Chat(("[Niko]\n Equip_item = Bone\n\n\n                                  +New Animations"))
		game.Players.LocalPlayer.Character.weapon.Value = 2
		game.Workspace.CoolSwords.Spear1.Weld.Part1 = game.Workspace.CoolSwords.Spear1
		game.Workspace.CoolSwords.SoulshattersBone.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://9735418770"
		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://9735419615"
		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://9735638973"
		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://9735640641"
		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://9148580331"
		
	elseif game.Players.LocalPlayer.Character.weapon.Value == 2 then
		game.Players:Chat(("[Niko]\n Equip_item = Trident\n\n\n                                  +New Animations"))
		game.Players.LocalPlayer.Character.weapon.Value = 3
		game.Workspace.CoolSwords.SoulshattersBone.Weld.Part1 = game.Workspace.CoolSwords.SoulshattersBone
		game.Workspace.CoolSwords.Trident.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
		game.Workspace.CoolSwords.Trident.CanCollide = false
		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://9887104861"
		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://9887165948"
		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://9895255580"
		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://9895303154"
		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://9895339734"
		
	elseif game.Players.LocalPlayer.Character.weapon.Value == 3 then
		game.Players:Chat(("[Niko]\n Equip_item = ChaosSabers\n\n\n                                  +New Animations"))
		game.Players.LocalPlayer.Character.weapon.Value = 4
		game.Workspace.CoolSwords.Trident.Weld.Part1 = game.Workspace.CoolSwords.Trident
		game.Workspace.CoolSwords.ChaosSaber1.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
		game.Workspace.CoolSwords.ChaosSaber2.Weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://13364417520"
		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://13364422508"
		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11893655479"
		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11893656895"
		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://11413982247"
	elseif game.Players.LocalPlayer.Character.weapon.Value == 4 then
		game.Players:Chat(("[Niko]\n Equip_item = [Nan]\n\n\n                                  +Old Animations"))
		game.Players.LocalPlayer.Character.weapon.Value = 0
		game.Workspace.CoolSwords.ChaosSaber1.Weld.Part1 = game.Workspace.CoolSwords.ChaosSaber1
		game.Workspace.CoolSwords.ChaosSaber2.Weld.Part1 = game.Workspace.CoolSwords.ChaosSaber2
		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://11231243775"
		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://11231244846"
		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11231246872"
		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11231248372"
		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://11231252598"
end
end
end)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()
while true do
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
end

local function JDAWWP_fake_script() -- Spinnyz.LocalScript 
	local script = Instance.new('LocalScript', game.Players.LocalPlayer.BackPack)

	while true do
		wait(0.22)
		-- Creates Aura that is visible only to others
		local args = {
			[1] = 1
		}
		game:GetService("ReplicatedStorage"):WaitForChild("Melee"):WaitForChild("SA"):FireServer(unpack(args))
		game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
	end
end
coroutine.wrap(JDAWWP_fake_script)()
