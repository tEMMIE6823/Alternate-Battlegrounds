-- [ Configuration ]
local autoselect = true


-- [ Variables ]
local Mode = "Idk"
local Anim2 = Instance.new("Animation")
local Anim3 = Instance.new("Animation")

-- [ Auto select ]

if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SelectionMenu") and autoselect == true then
    local args = {
        [1] = "XTFrisk",
        [2] = ""
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Char"):FireServer(unpack(args))
    game.Players.LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
    wait(7)
end

-- [ Custom Chat ]

local language = {
    ["A"] = "Ａ",
    ["a"] = "ａ",
    ["B"] = "Ｂ",
    ["b"] = "ｂ",
    ["D"] = "Ｄ",
    ["d"] = "ｄ",
    ["E"] = "Ｅ",
    ["e"] = "ｅ",
    ["F"] = "Ｆ",
    ["f"] = "ｆ",
    ["G"] = "Ｇ",
    ["g"] = "ｇ",
    ["H"] = "Ｈ",
    ["h"] = "ｈ",
    ["I"] = "Ｉ",
    ["i"] = "ｉ",
    ["J"] = "Ｊ",
    ["j"] = "ｊ",
    ["K"] = "Ｋ",
    ["k"] = "ｋ",
    ["L"] = "Ｌ",
    ["l"] = "ｌ",
    ["M"] = "Ｍ",
    ["m"] = "ｍ",
    ["N"] = "Ｎ",
    ["n"] = "ｎ",
    ["O"] = "Ｏ",
    ["o"] = "ｏ",
    ["P"] = "Ｐ",
    ["p"] = "ｐ",
    ["Q"] = "Ｑ",
    ["q"] = "ｑ",
    ["R"] = "Ｒ",
    ["r"] = "ｒ",
    ["S"] = "Ｓ",
    ["s"] = "ｓ",
    ["T"] = "Ｔ",
    ["t"] = "ｔ",
    ["U"] = "Ｕ",
    ["u"] = "ｕ",
    ["V"] = "Ｖ",
    ["v"] = "ｖ",
    ["W"] = "Ｗ",
    ["w"] = "ｗ",
    ["X"] = "Ｘ",
    ["x"] = "ｘ",
    ["Y"] = "Ｙ",
    ["y"] = "ｙ",
    ["Z"] = "Ｚ",
    ["z"] = "ｚ",
	-- special characters
	["!"] = "！",
	["@"] = "＠",
	["#"] = "＃",
	["$"] = "＄",
	["%"] = "％",
	["&"] = "＆",
	["*"] = "＊",
	["("] = "（",
	[")"] = "）",
	["-"] = "－",
	["+"] = "＋",
	["="] = "＝",
	[";"] = "；",
	[":"] = "：",
	["'"] = "＇",
	["/"] = "／",
	["?"] = "？",
	["."] = "．",
	[","] = "，",
	["["] = "【",
	["]"] = "】",
	-- numbers １２３４５６７８９０
	["1"] = "１",
	["2"] = "２",
	["3"] = "３",
	["4"] = "４",
	["5"] = "５",
	["6"] = "６",
	["7"] = "７",
	["8"] = "８",
	["9"] = "９",
	["0"] = "０",
}
-- 
spawn(function()
	debounce = false
	game.Players.LocalPlayer.Chatted:Connect(function(chat)
		if debounce == false then
			debounce = true 
			local idk = chat
			idk = idk:gsub(".", function(x)
				return language[x]
			end)
			idk = "【 Ａｖｅｒａｇｅ ＮａＮ Ｅｎｊｏｙｅｒ 】\n"..idk
			game.Players:Chat((idk))
			wait(0.3)
			debounce = false
		end
	end)
end)

-- Custom Idle
Anim2.AnimationId = game.ReplicatedStorage.Animations.Asgore.HT.Idle.AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim2)
k:Play()
k:AdjustSpeed(1)
Anim3.AnimationId = "rbxassetid://14853271700"
local k2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim3)
game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function(p)
	if Mode == "Betty" then
		if p > 0 then
			k:Stop()
			k2:Stop()
		 end
		 if p == 0 then 
			k:Play()
			k2:Stop()
		 end
	elseif Mode == "Gloves" then 
		if p > 0 then
			k:Stop()
			k2:Stop()
		end
		if p == 0 then 
			k:Stop()
			k2:Play()
		end
	end
end)

--[ Player Customization ]--

-- Destroy message request
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()

-- Nickname change
game.Players.LocalPlayer.Character.Head.Display.Frame.Visible = false
game.Players.LocalPlayer.Character.Head.Display.Frame.TextLabel.TextColor3 = Color3.fromRGB(100,0,0)
game.Players.LocalPlayer.Character["Pal Hair"]:Destroy() -- you can comment this line, if you dont have pal hair

-- Destroy XFrisk knifes
local LKnife = game.Players.LocalPlayer.Character.LKnife
local RKnife = game.Players.LocalPlayer.Character.RKnife
LKnife:Destroy()
RKnife:Destroy()

-- Weapons and effects
game:GetObjects("rbxassetid://13974112552")[1].Parent = game.Workspace
game.Workspace.Niko.WeaponSelector.Parent = game:GetService("Players").LocalPlayer.PlayerGui
game.Workspace.Niko.Health.Name = "HealthA"
game.Workspace.Niko.HealthA.Frame.PName.Text = "Average NaN Enjoyer"
game.Workspace.Niko.HealthA.Parent = game:GetService("Players").LocalPlayer.Character.Head

game:GetObjects("rbxassetid://14322955825")[1].Parent = game.Workspace
game.Workspace.CoolSwords.Rig["Cowboy Hat"].Handle.AccessoryWeld.Part1 = game.Players.LocalPlayer.Character.Head
game.Workspace.CoolSwords.Rig.LOL.Handle.AccessoryWeld.Part1 = game.Players.LocalPlayer.Character.Head
game.Workspace.CoolSwords.Rig.Head.Attachment.Parent = game.Players.LocalPlayer.Character.Head

local function JDAWWP_fake_script1234() -- Spinnyz.LocalScript 
	local increment = -25
    local ColorXD = 255
    while true do
        ColorXD = ColorXD + increment
        if ColorXD <= 0 then
            increment = 25
            ColorXD = 0
        elseif ColorXD >= 255 then
            increment = -25
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.Head.HealthA.Frame.PName.TextColor3 = Color3.fromRGB(ColorXD, 0, 0)
        game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(ColorXD, 0, 0)
    end
end
coroutine.wrap(JDAWWP_fake_script1234)()
game:GetService("Players").LocalPlayer.Character.Head.HealthA.Frame.HealthLabel.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
local Character = game:GetService("Players").LocalPlayer.Character
game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel:GetPropertyChangedSignal("Text"):connect(function()
	game:GetService("Players").LocalPlayer.Character.Head.HealthA.Frame.Health.PHealth.Size = UDim2.new(math.floor(game.Players.LocalPlayer.Character.Data.Health.Value) / 220, 0, 1, 0)
end)
local Character = game:GetService("Players").LocalPlayer.Character
game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel:GetPropertyChangedSignal("Text"):connect(function()
	game:GetService("Players").LocalPlayer.Character.Head.HealthA.Frame.HealthLabel.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
end)
local GuiSelect = game:GetService("Players").LocalPlayer.PlayerGui.WeaponSelector
local Weapons = game.Workspace.Niko.Weapons

GuiSelect.Frame.WeaponSelected:GetPropertyChangedSignal("Value"):Connect(function()
    if GuiSelect.Frame.WeaponSelected.Value == "Stick" then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick") then return end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove"):Destroy() end
        local Stick = Weapons.Stick:Clone()
        Stick.Parent = game:GetService("Players").LocalPlayer.Character
        Stick.Stick.Part0 = game:GetService("Players").LocalPlayer.Character["Right Arm"]
        Mode = "Stick"
    elseif GuiSelect.Frame.WeaponSelected.Value == "SakuyaKnife" then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig") then return end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove"):Destroy() end
        local Sakuya_Knife = Weapons.kniferig:Clone()
        Sakuya_Knife.Parent = game:GetService("Players").LocalPlayer.Character
        Sakuya_Knife.Weld.Part1 = game:GetService("Players").LocalPlayer.Character["Right Arm"]
        game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://12815491799"
        game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://12815493047"
        game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11231246872"
        game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://12815494300"
        game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://12815507477"
        Mode = "Sakuya"
    elseif GuiSelect.Frame.WeaponSelected.Value == "ChaosSaber" then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1") then return end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2") then return end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove"):Destroy() end
        local ChaosSaber1 = Weapons.ChaosSaber1:Clone()
        local ChaosSaber2 = Weapons.ChaosSaber2:Clone()
        ChaosSaber1.Parent = game:GetService("Players").LocalPlayer.Character
        ChaosSaber2.Parent = game:GetService("Players").LocalPlayer.Character
        ChaosSaber1.ChaosSaber.Part0 = game:GetService("Players").LocalPlayer.Character["Right Arm"]
        ChaosSaber2.ChaosSaber.Part0 = game:GetService("Players").LocalPlayer.Character["Left Arm"]
        game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://13364417520"
        game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://13364422508"
        game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11893655479"
        game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11893656895"
        game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://11413982247"
        Mode = "Asriel"
    elseif GuiSelect.Frame.WeaponSelected.Value == "CrossCharaBlade" then
        print(GuiSelect.Frame.WeaponSelected.Value)
        Mode = "XChara"
    elseif GuiSelect.Frame.WeaponSelected.Value == "GTFriskSword" then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword") then return end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove"):Destroy() end
        local GTFriskSword = Weapons.GTFSword:Clone()
        GTFriskSword.Parent = game:GetService("Players").LocalPlayer.Character
        GTFriskSword.HandleAttach.Part0 = game:GetService("Players").LocalPlayer.Character["Right Arm"]
        game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://11128201452"
        game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://11128205356"
        game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11128210908"
        game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11128215591"
        game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://9148580331"
        Mode = "GTF"
    elseif GuiSelect.Frame.WeaponSelected.Value == "BettySythe" then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe") then return end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove"):Destroy() end
        local BettyScythe = Weapons.BettyScythe:Clone()
        BettyScythe.Parent = game:GetService("Players").LocalPlayer.Character
        BettyScythe.BettyScythe.Weld.Part1 = game:GetService("Players").LocalPlayer.Character["Right Arm"]
        game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://11231243775"
        game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://13038341252"
        game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11893655479"
        game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11893656895"
        game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://11413982247"
        Mode = "Betty"
    elseif GuiSelect.Frame.WeaponSelected.Value == "ToughGloves" then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stick"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber1"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("ChaosSaber2"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("BettyScythe"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("GTFSword"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig") then game:GetService("Players").LocalPlayer.Character:FindFirstChild("kniferig"):Destroy() end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightGlove") then return end
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftGlove") then return end
        local RightGlove = Weapons.RightGlove:Clone()
        local LeftGlove = Weapons.LeftGlove:Clone()
        RightGlove.Parent = game:GetService("Players").LocalPlayer.Character
        LeftGlove.Parent = game:GetService("Players").LocalPlayer.Character
        RightGlove.Base.Weld.Part1 = game:GetService("Players").LocalPlayer.Character["Right Arm"]
        LeftGlove.Base.Weld.Part1 = game:GetService("Players").LocalPlayer.Character["Left Arm"]
        game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://12203358329"
        game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://12268925560"
        game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://12203465771"
        game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://12203467865"
        game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://12204674112"
        Mode = "Gloves"
    end
end)

local function KTTI_fake_script() -- WeaponSelector.LocalScript 
	local uis = game:GetService('UserInputService')
	local ts = game:GetService("TweenService")
	local players = game:GetService('Players')
	
	local lplr = players.LocalPlayer
	
	local frame = game:GetService("Players").LocalPlayer.PlayerGui.WeaponSelector:FindFirstChildWhichIsA('Frame')
	local uisca = game:GetService("Players").LocalPlayer.PlayerGui.WeaponSelector:FindFirstChildWhichIsA('UIScale')
	
	local ti = TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	
	uis.InputBegan:Connect(function(inp, gpe)
		if gpe then
			return
		end
	
		if inp.KeyCode == Enum.KeyCode.T then
            frame.Visible = true
			ts:Create(uisca, ti, {Scale = 0.7}):Play()
		end
	end)
	uis.InputEnded:Connect(function(inp, gpe)
		if gpe then
			return
		end
	
		if inp.KeyCode == Enum.KeyCode.T then
			ts:Create(uisca, ti, {Scale = 0}):Play()
		end
	end)
	
	uis.InputBegan:Connect(function(inp, gpe)
		if gpe then
			return
		end
	
		if inp.KeyCode == Enum.KeyCode.Y then
			frame:FindFirstChild("ArmorSelected").Value = ""
			frame:FindFirstChild("WeaponSelected").Value = ""
		end
	end)
	
	for i,v in pairs(frame:GetDescendants()) do
		if v:IsA("ImageButton") then
			local thing = v:FindFirstChildWhichIsA("TextLabel") or v:FindFirstChildWhichIsA("ImageLabel")
			local selected = frame:FindFirstChild(v.Parent.Name..'Selected')
			local size = thing.Size
			
			v.MouseEnter:Connect(function()
				ts:Create(thing, ti, {Size = size + UDim2.new(0.2, 0, 0.2, 0)}):Play()
				selected.Value = v.Name
			end)
			v.MouseLeave:Connect(function()
				ts:Create(thing, ti, {Size = size}):Play()
			end)
		end
	end
end
coroutine.wrap(KTTI_fake_script)()


