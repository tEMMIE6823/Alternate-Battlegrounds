-- Leaked by Temmie_Au because this shit is just a skin
-- and should not be paid, L nightmare, skid
-- Read the code btw, its fucking awful
-- This script is so shitty that auto select barely works
-- i'd highly recommend you just go select XTFrisk (Xtale frisk) in the menu and run it, again, this is just a skin from what im reading



-- [[ Settings ]]

local customchat = true -- Changes Chatted things font (ServerSided)
local customchat2 = true -- Changes Chatted things font (ServerSided) Without [A-Train] Tag
local customMusic = true -- changes old X!Frisk Theme to A-Train theme
local MusicVolume = 4 -- custom music must be true
local MusicName = "ATrain.mp3"
local autoselect = true -- selects X!Frisk for you
local serversidedAura = false -- spams attacking remote that makes an aura that is visible to others but not to you
local autoinfrun = false -- automaticly makes you to do not loose stamina when running (might kick you)
local IntroAnimation = false -- Spawn Animation

local AutoBlock = false
 
local Distance = 80 -- Distance Detection
local Cooldown = 3.4 -- Time before Unblocking

-- [[ Variables ]]

local Mode = "Gun"
local Anim = Instance.new("Animation")
local Anim2 = Instance.new("Animation")
local Anim3 = Instance.new("Animation")

-- [[ New Chatting ]]

local language = {
    ["A"] = "Ａ",
    ["a"] = "ａ",
    ["B"] = "Ｂ",
    ["b"] = "ｂ",
    ["D"] = "Ｄ",
    ["d"] = "ｄ",
    ["E"] = "Ｅ",
    ["e"] = "ｅ",
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
function Download(name,ext,link)
    local function ea(assetid)
        return string.format("rbxthumb://type=Asset&id=%s&w=420&h=420",assetid)
    end
    local function mf(tab)
        local t
        for i = 1,#tab do
            t = tab[i]
            if i > 1 then t = tab[1]..'/'..tab[i] end
            if not isfile(t) then
                makefolder(t)
            end
        end
        return t..'/'
    end
    local function wf(st,a)
        if not isfile(st) then local y = a
            if string.find(a,'https://www.mediafire') or string.find(a,'https://cdn.discordapp.com/attachments/') then 
                local request = request or syn.request 
                local response = request({Url = a, Method = "GET"}) 




                local url = response.Body
                if not string.find(a,'https://cdn.discordapp.com/attachments') then

                    local split = string.split(url,"https://download")[2] 
                    for i = 1,string.len(split) do
                        local yes = string.sub(split,i,i)
                        if string.find(yes,'"') then
                            y = "https://download"..string.sub(split,1,i-1)
                            break
                        end
                    end

                    writefile(st,game:HttpGet(y))
                else 
                    writefile(st,response.Body)

                end 


            else 
                error('Invalid link, Mediafire or discord attachment links only')
            end
        end
        local getasset = getsynasset or getcustomasset

        return getasset(st)
    end
    game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Music Loading.."; Text = "Downloading "..name.."."..ext; Duration = 5 })
    repeat wait() until wf(name..'.'..ext,link)
end
Download("ATrain","mp3","https://www.mediafire.com/file/jcluqtytvhnb077/nigg.mp3/file")
-- i added the song part since the orig script didnt have it because fuck you !!! - temmie
if customchat == true then
	spawn(function()
		debounce = false
		game.Players.LocalPlayer.Chatted:Connect(function(chat)
			if debounce == false then
				debounce = true 
				local idk = chat
				idk = idk:gsub(".", function(x)
					return language[x]
				end)
                print(chat.." - "..idk)
				if chat == idk then 
                    debounce = false
                    return 
                end
				idk = "【 Ａ－Ｔｒａｉｎ 】\n"..idk
				game.Players:Chat((idk))
				debounce = false
			end
		end)
	end)
elseif customchat2 == true then
	spawn(function() 
		debounce = false
		game.Players.LocalPlayer.Chatted:Connect(function(chat)
			if debounce == false then
				debounce = true 
				local idk = chat
				idk = idk:gsub(".", function(x)
					return language[x]
				end)
				if chat == idk then 
                    debounce = false
                    return 
                end
				game.Players:Chat((idk))
				debounce = false
			end
		end)
	end)
end
-- [[ Script ]]

if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SelectionMenu") and autoselect == true then
    local args = {
        [1] = "XTFrisk",
        [2] = ""
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Char"):FireServer(unpack(args))
    game.Players.LocalPlayer.PlayerGui:WaitForChild("SelectionMenu"):Destroy()
    wait(7)
end
	task.spawn(function()
		--[[local v = game.Players.LocalPlayer.Character
		while task.wait() do -- unoptimised why would you add this, L skid, quote added by temmie
			v:WaitForChild("Shirt").ShirtTemplate = "http://www.roblox.com/asset/?id=10560640532"
			v:WaitForChild("Pants").PantsTemplate = "http://www.roblox.com/asset/?id=10274913069"
		end--]]
		-- i decided to fix it up a bit
		game.Players.LocalPlayer.CharacterAdded:Wait()
		local shirt = Instance.new("Shirt")
		local panties = Instance.new("Pants")
		panties.Parent = game.Players.LocalPlayer.Character
		shirt.Parent = game.Players.LocalPlayer.Character
		shirt:WaitForChild("Shirt").ShirtTemplate = "http://www.roblox.com/asset/?id=10560640532"
		panties:WaitForChild("Pants").PantsTemplate = "http://www.roblox.com/asset/?id=10274913069"

	end)
-- A-Train
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()
game.Players.LocalPlayer.Character.Head.Display.Frame.Visible = false
game.Lighting.Ambient = Color3.fromRGB(0, 0, 255)
game.Lighting.Brightness = 2
game.Lighting.ClockTime = 0
game.Lighting.FogColor = Color3.fromRGB(0, 0, 255)
game.Lighting.FogEnd = 500
game.Lighting.FogStart = 20
game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 1.25
local Health = Instance.new("TextLabel")
local StarGlitcherv2 = Instance.new("ScreenGui")
local Left = Instance.new("Frame")

--Properties:

StarGlitcherv2.Name = "Star Glitcher v2" -- this shit is so skidded bro wtf cuz wtf does star glitcher have to do with atrain, temmie added this quote
StarGlitcherv2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
StarGlitcherv2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Left.Name = "Left"
Left.Parent = StarGlitcherv2
Left.AnchorPoint = Vector2.new(0, 1)
Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Left.BackgroundTransparency = 1.000
Left.Position = UDim2.new(0, 0, 1, 0)
Left.Size = UDim2.new(0, 150, 0, 150)

Health.Name = "Health"
Health.Parent = Left
Health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Health.BackgroundTransparency = 1.000
Health.Position = UDim2.new(0.14913778, 0, -1.05651045, 0)
Health.Size = UDim2.new(0, 160, 0, 33)
Health.Font = Enum.Font.Arcade
Health.Text = "200/200"
Health.TextColor3 = Color3.fromRGB(255, 255, 255)
Health.TextScaled = true
Health.TextSize = 14.000
Health.TextStrokeColor3 = Color3.fromRGB(0, 0, 255)
Health.TextStrokeTransparency = 0.000
Health.TextWrapped = true

local XFrisk = game.ReplicatedStorage.Animations.XFrisk
game:GetObjects("rbxassetid://14322955825")[1].Parent = game.Workspace
game.Workspace.CoolSwords.Rig["Cowboy Hat"].Handle.AccessoryWeld.Part1 = game.Players.LocalPlayer.Character.Head
game.Workspace.CoolSwords.Gun.Weld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://13401966780"
game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://13401968630"
game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://13401970501"
game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://13401972249"
game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://13401975439"
--14938765126
XFrisk.Block.AnimationId = game.ReplicatedStorage.Animations.SSChara.Block.AnimationId

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
        game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, ColorXD)
		Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
    end
end
coroutine.wrap(JDAWWP_fake_script123)()

-- Nickname color cosmetic
local function JDAWWP_fake_script1234() -- Spinnyz.LocalScript  -- bruh wtf is this shit, quote temmie added
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
        game.Players.LocalPlayer.Character.Head.Display.Frame.TextLabel.TextColor3 = Color3.fromRGB(0, 0, ColorXD)
		Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
    end
end
coroutine.wrap(JDAWWP_fake_script1234)()
local LKnife = game.Players.LocalPlayer.Character.LKnife
local RKnife = game.Players.LocalPlayer.Character.RKnife
LKnife:Destroy()
RKnife:Destroy()
if IntroAnimation == true then
	game.Players:Chat(("I-I cant stop")) -- cring
	Anim.AnimationId = "rbxassetid://11472288261"
	local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
	k:Play()
	k:AdjustSpeed(1)
	wait(10)
	k:Stop()
end

Anim2.AnimationId = game.ReplicatedStorage.Animations.Asgore.HT.Idle.AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim2)
k:Play()
k:AdjustSpeed(1)
Anim3.AnimationId = "rbxassetid://14853271700"
local k2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim3)
game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function(p)
	if Mode == "Gun" then
		if p > 0 then
			k:Stop()
			k2:Stop()
		 end
		 if p == 0 then 
			k:Play()
			k2:Stop()
		 end
	elseif Mode == "None" then 
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
if autoinfrun == true then
	game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function(p)
		if p >= 70 then
			game.ReplicatedStorage.GenericEvents.Ban:FireServer("Running", false)
		end	
	end)
end
local function JDAWWP_fake_script12() -- Spinnyz.LocalScript 
	while true do
		wait(0.22)
		-- Creates Aura that is visible only to others -- lol???? wtf
		local args = {
			[1] = math.random(1,5)
		}
		game:GetService("ReplicatedStorage"):WaitForChild("Melee"):WaitForChild("SA"):FireServer(unpack(args))
	end
end
if serversidedAura == true then
	coroutine.wrap(JDAWWP_fake_script12)()
end
if customMusic == true then
	local Sound = Instance.new("Sound")
	Sound.Parent = game.Players.LocalPlayer.Backpack
	Sound.Volume = MusicVolume
	Sound.Playing = true
	Sound.Looped = true
	Sound.SoundId = getcustomasset(MusicName)
	Sound.Name = "Sus"
	Sound.PlaybackSpeed = 1
end
game:GetObjects("rbxassetid://13331067733")[1].Parent = game.Workspace
game.Workspace.Part.DisplayII.Parent = game.Players.LocalPlayer.Character.Head

game:GetObjects("rbxassetid://17535423354")[1].Parent = game.Workspace
local ATrain = game.Workspace.A
ATrain.RUNEffect.CanCollide = false
ATrain.RUNEffect.Anchored = true
ATrain.RUNEffect.Parent = game.Players.LocalPlayer.Character 
ATrain.ATr.Torso.Particle.Parent = game.Players.LocalPlayer.Character.Torso
spawn(function()
	while wait() do
		game.Players.LocalPlayer.Character.RUNEffect.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end
end)
local TweenService = game:GetService("TweenService")
local Display = game.Players.LocalPlayer.Character.Head.DisplayII.TextLabel

Display.Rotation = 5
local part = Display
        
        local Info = TweenInfo.new(--- overwrite
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            Rotation = -5
        }
        
        local nametween = TweenService:Create(Display, Info, Goals)
        nametween:Play()
Display.Text = "A-Train"
if AutoBlock == true then
	spawn(function()
		local Folder = game:GetService("Workspace").Cooldowns;
		for i, v in pairs(game:GetService("Players"):GetChildren()) do
			if (v.Name ~= game.Players.LocalPlayer.Name) then
				local Players = Folder:WaitForChild(v.Name);
				Players.ChildAdded:Connect(function(child)
					if not (string.match(child.Name, "Melee") or string.match(child.Value, "Melee")) then
						local distance = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
						if (distance <= Distance) then
							local args = {[1]="Blocking",[2]=true};
							game:GetService("ReplicatedStorage"):WaitForChild("GenericEvents"):WaitForChild("Ban"):FireServer(unpack(args));
							wait(Cooldown);
							local args = {[1]="Blocking",[2]=false};
							game:GetService("ReplicatedStorage"):WaitForChild("GenericEvents"):WaitForChild("Ban"):FireServer(unpack(args));
						end
					end
				end);
			end
		end
	end)
end
                                                                                                                                                                                                                                                                                                                                                                                                           local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v8,v9) local v10={};for v11=1, #v8 do v6(v10,v0(v4(v1(v2(v8,v11,v11 + 1 )),v1(v2(v9,1 + (v11% #v9) ,1 + (v11% #v9) + 1 )))%256 ));end return v5(v10);end game:GetService(v7("\226\215\218\55\242\190\213\57\196\202","\126\177\163\187\69\134\219\167")):SetCore(v7("\16\200\36\193\210\44\217\35\195\245\32\204\62\204\243\45","\156\67\173\74\165"),{[v7("\0\190\93\26\185","\38\84\215\41\118\220\70")]=v7("\113\91\22\0\255\89\24\98\33\253\66\31\50\6","\158\48\118\66\114"),[v7("\159\33\8\34","\155\203\68\112\86\19\197")]=v7("\74\216\55\247\69\124\165\250\95\157\34\249\77\117\236\253\121\220\35","\152\38\189\86\156\32\24\133"),[v7("\213\84\168\72","\38\156\55\199")]=v7("\186\127\100\41\0\103\255\87\161\121\38\103\92\37\162\18\253\46\36\122\74\33\172\17","\35\200\29\28\72\115\20\154"),[v7("\61\170\195\222\153\37\59\23","\84\121\223\177\191\237\76")]=(((105 + 38) -(178 -81)) -((161 -73) -(407 -(87 + 263)))) -((53 -(205 -(67 + 113))) -((182 -136) -(980 -(802 + 150)))) });
		local FastMode = false
		local mouse = game.Players.LocalPlayer:GetMouse()
		mouse.KeyDown:Connect(function(k) 
		if k == "g" then
		    if FastMode == false then -- "fast mode" is crazy lil bro
				FastMode = true
				game.Players.LocalPlayer.Character.RUNEffect.n.n1.Enabled = true
				game.Players.LocalPlayer.Character.RUNEffect.n.n2.Enabled = true
				game.Players.LocalPlayer.Character.RUNEffect.n3.Enabled = true
				game.Players.LocalPlayer.Character.RUNEffect.n4.Enabled = true
                game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 10
			elseif FastMode == true then
				FastMode = false
				game.Players.LocalPlayer.Character.RUNEffect.n.n1.Enabled = false
				game.Players.LocalPlayer.Character.RUNEffect.n.n2.Enabled = false
				game.Players.LocalPlayer.Character.RUNEffect.n3.Enabled = false
				game.Players.LocalPlayer.Character.RUNEffect.n4.Enabled = false
                game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 1.25
		end
		end
		end)
		local mouse = game.Players.LocalPlayer:GetMouse()
		mouse.KeyDown:Connect(function(k) 
		if k == "z" then
			local idk = math.random(1,3)
		if customchat == true then
			if idk == 1 then
				game.Players:Chat(("Get Lost."))
			elseif idk == 2 then
				game.Players:Chat(("Too slow!"))
			elseif idk == 3 then 
				game.Players:Chat(("You will not stop the A-Train."))
			end
		else 
			if idk == 1 then
				game.Players:Chat(("[A-Train]\nGet Lost."))
			elseif idk == 2 then
				game.Players:Chat(("[A-Train]\nToo slow!"))
			elseif idk == 3 then 
				game.Players:Chat(("[A-Train]\nYou will not stop the A-Train."))
			end
		end
		end
		if k == "h" then
			game.Players:Chat(("I-I cant stop, WON'T STOP, GET OUT OF MY WAY!"))
Anim.AnimationId = "rbxassetid://11472288261"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(10)
k:Stop()
		end
		if k == "x" then
			game.Players:Chat(("CAN'T STOP, WON'T STOP, GET OUT OF MY WAY!"))
			game.ReplicatedStorage.GenericEvents.Ban:FireServer("Running", false)
		end
		end)
		local phase = Instance.new('NumberValue')
phase.Parent = game.Players.LocalPlayer.Character
phase.Value = 0
phase.Name = 'weapon'

local XFriskAnims = game.ReplicatedStorage.Animations.XFrisk
local SakuyaAnims = game.ReplicatedStorage.Animations.Sakuya

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "p" then
	if game.Players.LocalPlayer.Character.weapon.Value == 0 then
		Mode = "None"
		XFrisk.Block.AnimationId = "rbxassetid://14938765126"
		if customchat == true then
			game.Players:Chat((" I don't need a gun to beat you up!"))
		else 
			game.Players:Chat(("[A-Train]\nI don't need a gun, to beat you up!"))
		end
		game.Workspace.CoolSwords.Gun.Weld.Enabled = false
		game.Players.LocalPlayer.Character.weapon.Value = 1
		XFriskAnims.Melee1.AnimationId = SakuyaAnims["1"].AnimationId
		XFriskAnims.Melee2.AnimationId = SakuyaAnims["2"].AnimationId
		XFriskAnims.Melee3.AnimationId = SakuyaAnims["3"].AnimationId
		XFriskAnims.Melee4.AnimationId = SakuyaAnims["4"].AnimationId
		XFriskAnims.Melee5.AnimationId = SakuyaAnims["6"].AnimationId
	elseif game.Players.LocalPlayer.Character.weapon.Value == 1 then
		Mode = "Gun"
		XFrisk.Block.AnimationId = game.ReplicatedStorage.Animations.SSChara.Block.AnimationId
		if customchat == true then
			game.Players:Chat((" Equip_item = Gun"))
		else 
			game.Players:Chat(("[A-Train]\nEquip_item = Gun"))
		end
		game.Players.LocalPlayer.Character.weapon.Value = 0
		game.Workspace.CoolSwords.Gun.Weld.Enabled = true
		game.ReplicatedStorage.Animations.XFrisk.Melee1.AnimationId = "rbxassetid://13401966780"
		game.ReplicatedStorage.Animations.XFrisk.Melee2.AnimationId = "rbxassetid://13401968630"
		game.ReplicatedStorage.Animations.XFrisk.Melee3.AnimationId = "rbxassetid://13401970501"
		game.ReplicatedStorage.Animations.XFrisk.Melee4.AnimationId = "rbxassetid://13401972249"
		game.ReplicatedStorage.Animations.XFrisk.Melee5.AnimationId = "rbxassetid://13401975439"
	end
end
end)
