
-- A-Train
game.Players.LocalPlayer.Character.Head.Display.Frame.TextLabel:Destroy()
game.Lighting.Ambient = Color3.fromRGB(0, 0, 255)
game.Lighting.Brightness = 2
game.Lighting.ClockTime = 0
game.Lighting.FogColor = Color3.fromRGB(0, 0, 255)
game.Lighting.FogEnd = 500
game.Lighting.FogStart = 20
game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 1.25
local UI = Instance.new("ScreenGui")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")

--Properties:

UI.Name = "UI"
UI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextBox.Parent = UI
TextBox.BackgroundColor3 = Color3.fromRGB(4, 13, 52)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.310224116, 0, 0.0109755993, 0)
TextBox.Size = UDim2.new(0, 517, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(162, 134, 255)
TextBox.PlaceholderText = "Target:"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 47, 255)
TextBox.TextSize = 25.000
TextBox.TextWrapped = true

UICorner.Parent = TextBox

game.Players:Chat(("I-I cant stop"))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://11472288261"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(10)
k:Stop()

game:GetObjects("rbxassetid://13331067733")[1].Parent = game.Workspace
game.Workspace.Part.DisplayII.Parent = game.Players.LocalPlayer.Character.Head

game:GetObjects("rbxassetid://13974338469")[1].Parent = game.Workspace
game.Workspace.TrainLines.part.SpeedLine1.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
game.Workspace.TrainLines.part.SpeedLine2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
game.Workspace.TrainLines.part.SpeedLine3.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
game.Workspace.TrainLines.part.SpeedLine4.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
game.Workspace.TrainLines.part.SpeedLine5.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart

game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine1.ParticleEmitter.Rate = 30
game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine2.ParticleEmitter.Rate = 30
game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine3.ParticleEmitter.Rate = 30
game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine4.ParticleEmitter.Rate = 30
game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine5.ParticleEmitter.Rate = 30

game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine1.ParticleEmitter.Enabled = false
game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine2.ParticleEmitter.Enabled = false
game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine3.ParticleEmitter.Enabled = false
game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine4.ParticleEmitter.Enabled = false
game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine5.ParticleEmitter.Enabled = false

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

		local FastMode = false
		local mouse = game.Players.LocalPlayer:GetMouse()
		mouse.KeyDown:Connect(function(k) 
		if k == "g" then
		    if FastMode == false then
				FastMode = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine1.ParticleEmitter.Enabled = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine2.ParticleEmitter.Enabled = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine3.ParticleEmitter.Enabled = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine4.ParticleEmitter.Enabled = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine5.ParticleEmitter.Enabled = true
                game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 10
			elseif FastMode == true then
				FastMode = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine1.ParticleEmitter.Enabled = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine2.ParticleEmitter.Enabled = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine3.ParticleEmitter.Enabled = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine4.ParticleEmitter.Enabled = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.SpeedLine5.ParticleEmitter.Enabled = false
                game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 1.25
		end
		end
		end)
		local mouse = game.Players.LocalPlayer:GetMouse()
		mouse.KeyDown:Connect(function(k) 
		if k == "z" then
			local target = TextBox.Text
			game.Players:Chat(("[A-Train] Get Lost"))
			
		end
		end)
		
while true do
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 255)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 225)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 200)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 175)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 150)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 125)
	wait(0.25)
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 100)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 75)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 50)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 25)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	wait(0.25)
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 25)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 50)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 75)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 100)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 125)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 150)
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 175)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 200)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 225)
	wait(0.25)
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text

end


