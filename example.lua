local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/railme37509124/checkpyLibrary/main/library.lua", true))()

library.Objects.MainWindow = library:CreateMainWindow({Name = "checkpy"})
library.Objects.MainWindow.Autofarm = library.Objects.MainWindow:CreateTab({
	Name = "Autofarm"
})
library.Objects.MainWindow.Bobploits = library.Objects.MainWindow:CreateTab({
	Name = "Exploits"
})

local LoopKillAll = {Enabled = false}
LoopKillAll = library.Objects.MainWindow.Autofarm:CreateOptionsButton({
	Name = "LoopKillAll",
	Callback = function(callback)
		print(LoopKillAll.Enabled)
	end
})

local Speed = {Value = 0}
Speed = library.Objects.MainWindow.Bobploits:CreateTextBox({
	Name = "Speed",
	DefaultText = "Input Speed",
	FocusLost = function(callback)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(callback)
	end
})
