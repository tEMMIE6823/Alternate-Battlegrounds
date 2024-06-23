-- variables
local NoKillForEnemy = true
local Dodge = true
--[ Player Spawn ]--

-- If player in menu

if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SelectionMenu") then
    local args = {
        [1] = "XTFrisk",
        [2] = ""
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Char"):FireServer(unpack(args))
    game.Players.LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
    wait(7)
end
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
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 6
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = getcustomasset("Phase_1.mp3")
Sound.Name = "Sus"
Sound.PlaybackSpeed = 1

-- [ No Kill For Enemy ]

game.Players.LocalPlayer.Character:FindFirstChild("Head").Display.Frame.Health.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
    if Players.LocalPlayer.Character:FindFirstChild("Head").Display.Frame.Health.TextLabel.Text == "1" and NoKillForEnemy == true then
		game.Players.LocalPlayer.Character:FindFirstChild("Head"):Destroy()
	end
end)


-- Dodge
if Dodge == true then
	local Animationsg = game.ReplicatedStorage.Animations
	local Hurt = Animationsg.Hurt
	local Dodges = Animationsg.Dodges
	Hurt.Hurt1.AnimationId = Dodges.Dodge1.AnimationId
	Hurt.Hurt2.AnimationId = Dodges.Dodge2.AnimationId
	Hurt.Hurt3.AnimationId = Dodges.Dodge1.AnimationId
	Hurt.Hurt4.AnimationId = Dodges.Dodge2.AnimationId
end
--[ GUI Customization ]--

-- Random Sentences
spawn(function()
	local debris = game:GetService("Debris")
	local TweenService = game:GetService("TweenService")
	local ScreenGui = Instance.new("ScreenGui")
	local ImageLabel = Instance.new("ImageLabel")
	local udim2scale = UDim2.fromScale
	local rndm = Random.new()
	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	ImageLabel.Parent = ScreenGui
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel.Image = "rbxassetid://6856703065"

	TweenService:Create(ImageLabel,TweenInfo.new(5), {ImageTransparency = 0}):Play()

	local Info = TweenInfo.new(
		1,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.InOut,
		1,
		true, 
		0
	)

	local Goals = {
		Rotation = -4
	}

	local function NGBOQ_fake_script() -- TextLabel.funnyscript 
		local TextLabel = script.Parent	
		local script = Instance.new('Script', TextLabel)

		local function funny(word, c1, c2, c3, TF, fade, pos)
			local TextLabel = Instance.new("TextLabel")
			TextLabel.Parent = ImageLabel
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.450875312, 0, 0.40533337, 0)
			TextLabel.Size = UDim2.new(0.144767895, 0, 0.0787401572, 0)
			TextLabel.Font = Enum.Font.Fantasy
			TextLabel.Text = ""
			TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true
			TextLabel.TextTransparency = 0
			debris:AddItem(TextLabel,fade + .5)
			TextLabel.Position = udim2scale(rndm:NextNumber(0,1), rndm:NextNumber(0,1))
			
			TweenService:Create(TextLabel, Info, Goals):Play()
			TweenService:Create(TextLabel, TweenInfo.new(fade), {TextTransparency = 1}):Play()
			for i = 1, #word do
				TextLabel.Text = string.sub(word, 1, i)
				TextLabel.Font = TF
				TextLabel.TextColor3 = Color3.fromRGB(c1, c2, c3)
				wait(0.05)
			end
		end

		spawn(function()
			while wait(0.4) do
				coroutine.wrap(function()
					funny("Kill Them.", 255,0,0, "Arcade", 2.69)
					funny("Grab The Knife.", 255,0,0, "Arcade",2.69)
				end)()
			end
		end)
	end
	coroutine.wrap(NGBOQ_fake_script)()
end)
-- XFrisk Aura spawn
local function JDAWWP_fake_script12() -- Spinnyz.LocalScript 
	while true do
		wait(0.22)
		-- Creates Aura that is visible only to others
		local args = {
			[1] = 5
		}
		game:GetService("ReplicatedStorage"):WaitForChild("Melee"):WaitForChild("SA"):FireServer(unpack(args))
	end
end
coroutine.wrap(JDAWWP_fake_script12)()

-- Chat color cosmetic
local function JDAWWP_fake_script123() -- Spinnyz.LocalScript 
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
        game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(ColorXD, 0, 0)
    end
end
coroutine.wrap(JDAWWP_fake_script123)()

-- Nickname color cosmetic
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
        game.Players.LocalPlayer.Character.Head.Display.Frame.TextLabel.TextColor3 = Color3.fromRGB(ColorXD, 0, 0)
    end
end
coroutine.wrap(JDAWWP_fake_script1234)()

-- Death effect
local function JDAWWP_fake_script11() -- Spinnyz.LocalScript 
	repeat wait()
	until game.Players.LocalPlayer.Character.Data.Health.Value <= 0
	game:GetObjects("rbxassetid://14396677864")[1].Parent = game.Workspace
	spawn(function()
	    game.Players.LocalPlayer.Character.Head.Sus:Destroy()
	    game.Workspace.Cool.UltimateTranForm.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart -- :skull:

	    local sound = Instance.new('Sound', game.Players.LocalPlayer.Character.Head)
	    local id = 11472424364 -- 11472424364 11267960786
	    sound.Volume = 15
	    sound.SoundId = 'rbxassetid://'..id
	    sound:Play()
	end)
end
coroutine.wrap(JDAWWP_fake_script11)()

--[ Player Customization ]--

-- Destroy message request
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()

-- Nickname change
game.Players.LocalPlayer.Character.Head.Display.Frame.TextLabel.Text = "Average NaN Enjoyer"
game.Players.LocalPlayer.Character.Head.Display.Frame.TextLabel.TextColor3 = Color3.fromRGB(100,0,0)
game.Players.LocalPlayer.Character["Pal Hair"]:Destroy() -- you can comment this line, if you dont have pal hair

-- Destroy XFrisk knifes
local LKnife = game.Players.LocalPlayer.Character.LKnife
local RKnife = game.Players.LocalPlayer.Character.RKnife
LKnife:Destroy()
RKnife:Destroy()

-- Cutscene
game:GetObjects("rbxassetid://14469413149")[1].Parent = game.Workspace

-- Panels
game:GetObjects("rbxassetid://14016815477")[1].Parent = game.Workspace
game.Workspace.Panel1.Weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart

-- Weapons and effects
game:GetObjects("rbxassetid://14322955825")[1].Parent = game.Workspace
game.Workspace.CoolSwords.Rig["Cowboy Hat"].Handle.AccessoryWeld.Part1 = game.Players.LocalPlayer.Character.Head
game.Workspace.CoolSwords.Rig.LOL.Handle.AccessoryWeld.Part1 = game.Players.LocalPlayer.Character.Head
game.Workspace.CoolSwords.Rig.Head.Attachment.Parent = game.Players.LocalPlayer.Character.Head

game.Workspace.CoolSwords.Trident.CanCollide = false
game.Workspace.CoolSwords.Spear1.CanCollide = false
game.Workspace.CoolSwords.Jevil.Massless = true

--[ Key Binds ]--

-- Creating weapon for numbering (baza)
local RealWeapons = Instance.new('NumberValue')
RealWeapons.Parent = game.Players.LocalPlayer.Character
RealWeapons.Value = 0
RealWeapons.Name = 'weapon'
local WeaponValue = game.Players.LocalPlayer.Character.weapon
local mouse = game.Players.LocalPlayer:GetMouse()

-- Weapon switching
mouse.KeyDown:Connect(function(k) 
    if k == "p" then
    	if WeaponValue.Value == 0 then
    		game.Players:Chat(("Equip_item = Spear"))
    		WeaponValue.Value = 1
            game.Workspace.CoolSwords.Spear1.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://9735418770"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://9735419615"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://9735638973"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://9735640641"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://9148580331"
    	elseif WeaponValue.Value == 1 then
    		game.Players:Chat(("Equip_item = Bone"))
    		WeaponValue.Value = 2
    		game.Workspace.CoolSwords.Spear1.Weld.Part1 = game.Workspace.CoolSwords.Spear1
    		game.Workspace.CoolSwords.SoulshattersBone.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://9735418770"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://9735419615"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://9735638973"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://9735640641"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://9148580331"
    	elseif WeaponValue.Value == 2 then
    		game.Players:Chat(("Equip_item = Trident"))
    		WeaponValue.Value = 3
    		game.Workspace.CoolSwords.SoulshattersBone.Weld.Part1 = game.Workspace.CoolSwords.SoulshattersBone
    		game.Workspace.CoolSwords.Trident.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.Workspace.CoolSwords.Trident.CanCollide = false
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://9887104861"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://9887165948"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://9895255580"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://9895303154"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://9895339734"
    	elseif WeaponValue.Value == 3 then
    		game.Players:Chat(("Equip_item = ChaosSabers"))
    		WeaponValue.Value = 4
    		game.Workspace.CoolSwords.Trident.Weld.Part1 = game.Workspace.CoolSwords.Trident
    		game.Workspace.CoolSwords.ChaosSaber1.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.Workspace.CoolSwords.ChaosSaber2.Weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://13364417520"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://13364422508"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11893655479"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11893656895"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://11413982247"
        elseif WeaponValue.Value == 4 then
    		WeaponValue.Value = 5
            game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://11128201452"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://11128205356"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11128210908"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11128215591"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://9148580331"
            game.Players:Chat(("Equip_item = GlitchTale_Frisk_Sword"))
            game.Workspace.CoolSwords.ChaosSaber1.Weld.Part1 = game.Workspace.CoolSwords.ChaosSaber1
    		game.Workspace.CoolSwords.ChaosSaber2.Weld.Part1 = game.Workspace.CoolSwords.ChaosSaber2
            game.Workspace.CoolSwords.GTFSword.HandleAttach.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.Workspace.CoolSwords.GTFSword.HandleAttach.Enabled = true
    	elseif WeaponValue.Value == 5 then
    		game.Players:Chat(("Equip_item = Sakuya_Knife"))
    		WeaponValue.Value = 6
    		game.Workspace.CoolSwords.Rig2.Torso.funny.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    		game.Workspace.CoolSwords.kniferig.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.Workspace.CoolSwords.GTFSword.HandleAttach.Enabled = false
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://12815491799"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://12815493047"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11231246872"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://12815494300"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://12815507477"
    	elseif WeaponValue.Value == 6 then
    		game.Players:Chat(("Equip_item = Jevil_Weapon"))
    		WeaponValue.Value = 7
    		game.Players.LocalPlayer.Character.HumanoidRootPart.funny.Parent = game.Workspace.CoolSwords.Rig2.Torso
    		game.Workspace.CoolSwords.kniferig.Weld.Part1 = game.Workspace.CoolSwords.kniferig
    		game.Workspace.CoolSwords.Jevil.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://11231243775"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://13038341252"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://13038344485"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://13038347593"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://13038350238"
    	elseif WeaponValue.Value == 7 then
    		game.Players:Chat(("Equip_item = Gun"))
    		WeaponValue.Value = 8
    		game.Workspace.CoolSwords.Jevil.Weld.Part1 = game.Workspace.CoolSwords.Jevil
    		game.Workspace.CoolSwords.Gun.Weld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://13401966780"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://13401968630"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://13401970501"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://13401972249"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://13401975439"
    	elseif WeaponValue.Value == 8 then
    		game.Players:Chat(("Equip_item = GlitchTale_Chara_Knife"))
    		WeaponValue.Value = 9
    		game.Workspace.CoolSwords.Model.Handle["Knife handle"].Enabled = true
    		game.Workspace.CoolSwords.Model.Handle["Knife handle"].Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.Workspace.CoolSwords.Gun.Weld.Part1 = game.Workspace.CoolSwords.Gun
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://11548831192"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://11548832844"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11548867055"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11548864019"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://11548838837"
    	elseif WeaponValue.Value == 9 then
    		game.Players:Chat(("Equip_item = Cross_Knife"))
    		WeaponValue.Value = 10
    		game.Workspace.CoolSwords.Model.Handle["Knife handle"].Enabled = false
    		game.Workspace.CoolSwords.CrossKnife.Main.Motor6D.Enabled = true
    		game.Workspace.CoolSwords.CrossKnife.Main.Motor6D.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.Workspace.CoolSwords.Gun.Weld.Part1 = game.Workspace.CoolSwords.Gun
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://11893647921"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://11893651874"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11893655479"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11893656895"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://11893661089"
    	elseif WeaponValue.Value == 10 then
    		game.Players:Chat(("Equip_item = Akuma_Gloves"))
    		WeaponValue.Value = 11
    		game.Workspace.CoolSwords.CrossKnife.Main.Motor6D.Enabled = false
    		game.Workspace.CoolSwords.GloveL.Weld.Enabled = true
    		game.Workspace.CoolSwords.GloveR.Weld.Enabled = true
    		game.Workspace.CoolSwords.GloveR.Weld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
    		game.Workspace.CoolSwords.GloveL.Weld.Part0 = game.Players.LocalPlayer.Character["Left Arm"]
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://12203358329"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://12268925560"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://12203465771"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://12203467865"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://12204674112"
        elseif WeaponValue.Value == 11 then
    		game.Players:Chat(("Equip_item = [Nan]"))
    		WeaponValue.Value = 0
    		game.Workspace.CoolSwords.GloveL.Weld.Enabled = false
    		game.Workspace.CoolSwords.GloveR.Weld.Enabled = false
    		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://11231243775"
    		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://11231244846"
    		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://11231246872"
    		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://11231248372"
    		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://11231252598"
        end
    end
end)

-- Cosmetic destroy
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
		game.Players.LocalPlayer.Character.Head:Destroy()
	end
end)

-- Random Sentences destroy
mouse.KeyDown:Connect(function(k) 
	if k == "b" then
		game.Players.LocalPlayer.PlayerGui.ScreenGui:Destroy()
	end
end)

-- Teleport to map center
mouse.KeyDown:Connect(function(k) 
	if k == "u" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12.6236925, 452.007355, -97.8616867, 0.259322345, -0.0406263918, -0.964935899, 0.0526981726, 0.998221576, -0.0278655179, 0.964352131, -0.0436242111, 0.261002123)
	end
end)

-- PHASE 2?!?!?
mouse.KeyDown:Connect(function(k)
	if k == "m" then
        -- Get important objects
		game:GetObjects("rbxassetid://14405573848")[1].Parent = game.Workspace
		game.Workspace.Part.FR.Parent = game.Players.LocalPlayer.Character.Torso

        -- Hiding body
		game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 0
		game.Players.LocalPlayer.Character.Torso.Transparency = "0.5"
		game.Players.LocalPlayer.Character.Head.Transparency = "0.5"
		game.Players.LocalPlayer.Character['Left Arm'].Transparency = "0.5"
		game.Players.LocalPlayer.Character['Right Arm'].Transparency = "0.5"
		game.Players.LocalPlayer.Character['Left Leg'].Transparency = "0.5"
		game.Players.LocalPlayer.Character['Right Leg'].Transparency = "0.5"
		wait(0.5)
		game.Players.LocalPlayer.Character.Torso.Transparency = "1"
		game.Players.LocalPlayer.Character.Head.Transparency = "1"
		game.Players.LocalPlayer.Character['Left Arm'].Transparency = "1"
		game.Players.LocalPlayer.Character['Right Arm'].Transparency = "1"
		game.Players.LocalPlayer.Character['Left Leg'].Transparency = "1"
		game.Players.LocalPlayer.Character['Right Leg'].Transparency = "1"
		wait(1)

        -- Getting heart textute (not broken/broken)
		game.Players.LocalPlayer.Character.Torso.FR.RF.Texture = "http://www.roblox.com/asset/?id=12104764025"
		wait(1)
		game.Players.LocalPlayer.Character.Torso.FR.RF.Texture = "http://www.roblox.com/asset/?id=13563938671"

        -- Heart broking sound
		local Sound = Instance.new("Sound")
		Sound.Parent = game.Players.LocalPlayer.Backpack
		Sound.Volume = 5
		Sound.Playing = true
		Sound.Looped = false
		Sound.SoundId = "rbxassetid://7022295490"
		Sound.Name = "dead"
		Sound.PlaybackSpeed = 1
		wait(1)

		game.Players:Chat(("But it refused."))

        -- Heart reviving sound
		local Sound = Instance.new("Sound")
		Sound.Parent = game.Players.LocalPlayer.Backpack
		Sound.Volume = 5
		Sound.Playing = true
		Sound.Looped = false
		Sound.SoundId = "rbxassetid://367453005"
		Sound.Name = "reviving"
		Sound.PlaybackSpeed = 1
		wait(0.75)

        -- Visible body
		game.Players.LocalPlayer.Character.Torso.FR:Destroy()
		game.Players.LocalPlayer.Character.Torso.Transparency = "0.5"
		game.Players.LocalPlayer.Character.Head.Transparency = "0.5"
		game.Players.LocalPlayer.Character['Left Arm'].Transparency = "0.5"
		game.Players.LocalPlayer.Character['Right Arm'].Transparency = "0.5"
		game.Players.LocalPlayer.Character['Left Leg'].Transparency = "0.5"
		game.Players.LocalPlayer.Character['Right Leg'].Transparency = "0.5"
		wait(0.5)
		game.Players.LocalPlayer.Character.Torso.Transparency = "0"
		game.Players.LocalPlayer.Character.Head.Transparency = "0"
		game.Players.LocalPlayer.Character['Left Arm'].Transparency = "0"
		game.Players.LocalPlayer.Character['Right Arm'].Transparency = "0"
		game.Players.LocalPlayer.Character['Left Leg'].Transparency = "0"
		game.Players.LocalPlayer.Character['Right Leg'].Transparency = "0"
		game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 1

		game.Players:Chat(("."))
		wait(2)
		game.Players:Chat(("I've had ENOUGH, Time to use all my P0wEr!"))
		wait(3)

        -- Broly animation
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://12279702081"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
        
        -- Phase 2 sound
		game.Players.LocalPlayer.Character.Head.Sus.SoundId = getcustomasset("Dust.mp3")
		game.Players.LocalPlayer.Character.Head.Sus.TimePosition = 0
	end
end)
mouse.KeyDown:Connect(function(k) 
	if k == "n" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.CutScene.XD.CFrame
		game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 0
		wait(1)
		game.Workspace.CutScene.man1.Head.chat.chat1.Visible = true
		wait(2)
		game.Workspace.CutScene.man1.Head.chat.chat2.Visible = true
		game.Workspace.CutScene.man1.Head.chat.chat1.Visible = false
		wait(2)
		game.Workspace.CutScene.man1.Head.chat.chat2.Visible = false
		game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 1
		game.Players:Chat(("Your Right."))
		wait(2)
		game.Players:Chat(("I am NOT DONE WITH THEM!!."))
		wait(1)
		local Sound = Instance.new("Sound")
		Sound.Parent = game.Players.LocalPlayer.Backpack
		Sound.Volume = 5
		Sound.Playing = true
		Sound.Looped = false
		Sound.SoundId = "rbxassetid://367453005"
		Sound.Name = "re"
		Sound.PlaybackSpeed = 1
		game.Workspace.CoolSwords.Rig.Head.eye.Parent = game.Players.LocalPlayer.Character.Head
		game.Workspace.CoolSwords.Rig.Head.eye.Parent = game.Players.LocalPlayer.Character.Head
		wait(3)
		game.Players:Chat(("[Executive] = [Character.CFrame] = [Map]."))
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12.6236925, 452.007355, -97.8616867, 0.259322345, -0.0406263918, -0.964935899, 0.0526981726, 0.998221576, -0.0278655179, 0.964352131, -0.0436242111, 0.261002123)
	end
	end)