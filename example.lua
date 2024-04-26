local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/railme37509124/checkpyLibrary/main/library.lua", true))()

library.Objects.MainWindow = library:CreateMainWindow({Name = "checkpy"})

library.Objects.MainWindow.LocalPlayer = library.Objects.MainWindow:CreateTab({
    Name = "LocalPlayer"
})

library.Objects.MainWindow.Misc = library.Objects.MainWindow:CreateTab({
    Name = "Misc"
})

local Speed = {CurrentValue = 0}
Speed = library.Objects.MainWindow.LocalPlayer:CreateSlider({
	Name = "Speed",
	DefaultAmount = 16,
	Max = 375,
	SliderColor = Color3.new(255, 255, 255),
	SliderBackgroundColor = Color3.new(0.741176, 0.741176, 0.741176),
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Value)
	end
})

local JumpPower = {CurrentValue = 0}
JumpPower = library.Objects.MainWindow.LocalPlayer:CreateSlider({
	Name = "JumpPower",
	DefaultAmount = 50,
	Max = 250,
	SliderColor = Color3.new(255, 255, 255),
	SliderBackgroundColor = Color3.new(0.741176, 0.741176, 0.741176),
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(Value)
	end
})

local InfiniteJump = {Enabled = false}
local InfiniteJumpConnection
InfiniteJump = library.Objects.MainWindow.LocalPlayer:CreateOptionsButton({
    Name = "InfiniteJump",
    Callback = function(callback)
        if callback then
            InfiniteJumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end)
        else
            if InfiniteJumpConnection then
                InfiniteJumpConnection:Disconnect()
            end
        end
    end
})

local Rejoin = {Enabled = false}
Rejoin = library.Objects.MainWindow.Misc:CreateOptionsButton({
    Name = "Rejoin",
    Callback = function(callback)
        if callback then
            game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
            Rejoin.ToggleButton(false)
        end
    end
})

local BreakJoints = {Enabled = false}
BreakJoints = library.Objects.MainWindow.Misc:CreateOptionsButton({
    Name = "BreakJoints",
    Callback = function(callback)
        if callback then
            game.Players.LocalPlayer.Character:BreakJoints()
            BreakJoints.ToggleButton(false)
        end
    end
})

local TeleportPlayer = {Enabled = false}
TeleportPlayer = library.Objects.MainWindow.Misc:CreateOptionsButton({
    Name = "TeleportPlayer",
    Callback = function(callback)
        if callback then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())].Character.HumanoidRootPart.CFrame
            TeleportPlayer.ToggleButton(false)
        end
    end
})

local TweenPlayer = {Enabled = false}
TweenPlayer = library.Objects.MainWindow.Misc:CreateOptionsButton({
    Name = "TweenPlayer",
    Callback = function(callback)
        if callback then
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())].Character.HumanoidRootPart.CFrame}):Play()
            TweenPlayer.ToggleButton(false)
        end
    end
})

local PlaceIdTeleport = {Value = 0}
PlaceIdTeleport = library.Objects.MainWindow.Misc:CreateTextBox({
    Name = "PlaceIdTeleport",
    DefaultText = "Input Place Id",
    FocusLost = function(callback)
        game:GetService("TeleportService"):Teleport(tonumber(callback), game.Players.LocalPlayer)
    end
})
