game:GetObjects("rbxassetid://9795791474")[1].Parent = game.Workspace
game.Players.LocalPlayer.Character.Head.Eye:Destroy()
game.Workspace.Rig.Head.Eye.Parent = game.Players.LocalPlayer.Character.Head
game.Workspace.Rig.Head.Aura.Parent = game.Players.LocalPlayer.Character.Head
game.Workspace.Rig.Highlight.Parent = game.Players.LocalPlayer.Character



-- Blaster1
game.Players.LocalPlayer.Character.SBlaster.Jaws.JawL.Color = Color3.fromRGB(17,17,17)
game.Players.LocalPlayer.Character.SBlaster.Jaws.JawR.Color = Color3.fromRGB(17,17,17)
game.Players.LocalPlayer.Character.SBlaster.Head.Color = Color3.fromRGB(17,17,17)
game.Players.LocalPlayer.Character.SBlaster.Head.Eyes.Color = Color3.fromRGB(0,255,255)
game.Players.LocalPlayer.Character.SBlaster.Head.Inside.Color = Color3.fromRGB(0,255,255)

-- Blaster2
game.Players.LocalPlayer.Character.SBlaster2.Jaws.JawL.Color = Color3.fromRGB(17,17,17)
game.Players.LocalPlayer.Character.SBlaster2.Jaws.JawR.Color = Color3.fromRGB(17,17,17)
game.Players.LocalPlayer.Character.SBlaster2.Head.Color = Color3.fromRGB(17,17,17)
game.Players.LocalPlayer.Character.SBlaster2.Head.Eyes.Color = Color3.fromRGB(0,255,255)
game.Players.LocalPlayer.Character.SBlaster2.Head.Inside.Color = Color3.fromRGB(0,255,255)

coroutine.wrap(JDAWWP_fake_script12)()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 6
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://10283942144"
Sound.Name = "Sus"
Sound.PlaybackSpeed = 1

local phase = Instance.new('NumberValue')
phase.Parent = game.Players.LocalPlayer.Character
phase.Value = 0
phase.Name = 'weapon'
local WeaponValue = game.Players.LocalPlayer.Character.weapon
local mouse = game.Players.LocalPlayer:GetMouse()
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "q" or "e" then
	if WeaponValue.Value == 0 then
        game.Players.LocalPlayer.Character.Head.Sus.SoundId = "rbxassetid://10283942144"
		game.Players:Chat(("[NightMare!Mode!fell!sans]\nMode = 1\n\n\n                                  Music - Sakuya"))
		WeaponValue.Value = 1
	elseif WeaponValue.Value == 1 then
        game.Players.LocalPlayer.Character.Head.Sus.SoundId = "rbxassetid://10283942144"
		game.Players:Chat(("[NightMare!Mode!fell!sans]\nMode = 1\n\n\n                                  Music - Sakuya"))
		WeaponValue.Value = 2
		
	elseif WeaponValue.Value == 2 then
        game.Players.LocalPlayer.Character.Head.Sus.SoundId = "rbxassetid://10283942144"
		game.Players:Chat(("[NightMare!Mode!fell!sans]\nMode = 1\n\n\n                                  Music - Sakuya"))
		WeaponValue.Value = 3
    end 
end
end)