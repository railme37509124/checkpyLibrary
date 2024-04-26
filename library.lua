local library = {}
library.Objects = {}
library.Keybinds = {}
function library:CreateMainWindow(args)
	local MainWindow = {}

	MainWindow.checkpy = Instance.new("ScreenGui")
	local checkpyMain = Instance.new("Frame")
	local TopBar = Instance.new("CanvasGroup")
	local Content = Instance.new("Frame")
	local ContentHolder = Instance.new("ScrollingFrame")
	local UIGradient = Instance.new("UIGradient")
	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local UIListLayout = Instance.new("UIListLayout")
	local IndicatorThing = Instance.new("Frame")
	local IndicatorThing2 = Instance.new("TextLabel")

	MainWindow.checkpy.Name = "checkpy"
	MainWindow.checkpy.Parent = game.CoreGui
	MainWindow.checkpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	MainWindow.checkpy.ResetOnSpawn = false

	checkpyMain.Name = "checkpyMain"
	checkpyMain.Parent = MainWindow.checkpy
	checkpyMain.BackgroundColor3 = Color3.fromRGB(4, 4, 4)
	checkpyMain.BackgroundTransparency = 0.150
	checkpyMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
	checkpyMain.BorderSizePixel = 0
	checkpyMain.Position = UDim2.new(0, 15, 0, 15)
	checkpyMain.Size = UDim2.new(0, 270, 0, 480)
	if args.Drag then 
		local UserInputService = game:GetService("UserInputService")

		local gui = checkpyMain

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end

	TopBar.Name = "checkpyMain"
	TopBar.Parent = checkpyMain
	TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TopBar.BorderSizePixel = 0
	TopBar.Position = UDim2.new(0, 0, 0, 0)
	TopBar.Size = UDim2.new(1, 0, -0.069, 100)
	TopBar.BackgroundColor3 = Color3.new(255, 255, 255)

	Content.Name = "Content"
	Content.Parent = checkpyMain
	Content.AnchorPoint = Vector2.new(0, 1)
	Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Content.BackgroundTransparency = 1.000
	Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content.BorderSizePixel = 0
	Content.Position = UDim2.new(0, 0, 1, 0)
	Content.Size = UDim2.new(1, 0, 0.860416651, 0)

	ContentHolder.Name = "ContentHolder"
	ContentHolder.Parent = Content
	ContentHolder.Active = true
	ContentHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ContentHolder.BackgroundTransparency = 1.000
	ContentHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ContentHolder.BorderSizePixel = 0
	ContentHolder.Size = UDim2.new(1, 0, 1, 0)
	ContentHolder.ScrollBarImageTransparency = 1
	ContentHolder.ScrollBarThickness = 0
	ContentHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 49, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(16, 80, 255))}
	UIGradient.Rotation = 65
	UIGradient.Parent = TopBar

	ImageLabel.Parent = TopBar
	ImageLabel.AnchorPoint = Vector2.new(1, 0)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(1.04742539, 0, 0.202228606, 0)
	ImageLabel.Rotation = -8.000
	ImageLabel.Size = UDim2.new(0, 78, 0, 78)
	ImageLabel.Image = "rbxassetid://17241728363"
	ImageLabel.ImageColor3 = Color3.fromRGB(236, 236, 236)

	TextLabel.Parent = TopBar
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.0407407396, 0, 0.152798474, 0)
	TextLabel.Size = UDim2.new(0, 193, 0, 45)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = args.Name
	TextLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	UIListLayout.Parent = ContentHolder
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	IndicatorThing.Name = "IndicatorThing"
	IndicatorThing.Parent = checkpyMain
	IndicatorThing.AnchorPoint = Vector2.new(0, 1)
	IndicatorThing.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	IndicatorThing.BackgroundTransparency = 0.800
	IndicatorThing.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IndicatorThing.BorderSizePixel = 0
	IndicatorThing.Position = UDim2.new(0, 0, 1, 0)
	IndicatorThing.Size = UDim2.new(0, 270, 0, 30)

	IndicatorThing2.Parent = IndicatorThing
	IndicatorThing2.AnchorPoint = Vector2.new(0.5, 0)
	IndicatorThing2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IndicatorThing2.BackgroundTransparency = 1.000
	IndicatorThing2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IndicatorThing2.BorderSizePixel = 0
	IndicatorThing2.Position = UDim2.new(0.5, 0, 0, 0)
	IndicatorThing2.Size = UDim2.new(1.00000012, 0, 1.00000012, 0)
	IndicatorThing2.Font = Enum.Font.Gotham
	IndicatorThing2.Text = "↑↓"
	IndicatorThing2.TextColor3 = Color3.fromRGB(255, 255, 255)
	IndicatorThing2.TextScaled = true
	IndicatorThing2.TextSize = 14.000
	IndicatorThing2.TextWrapped = true
	IndicatorThing2.TextXAlignment = Enum.TextXAlignment.Center

	function MainWindow:BindModule(args)
		local bind = Instance.new("TextLabel")
		local bindcon

		bind.Name = "bind"
		bind.Parent = MainWindow.checkpy
		bind.AnchorPoint = Vector2.new(0.5, 0)
		bind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		bind.BackgroundTransparency = 1.000
		bind.BorderColor3 = Color3.fromRGB(0, 0, 0)
		bind.BorderSizePixel = 0
		bind.Position = UDim2.new(0.514267981, 0, 0.00893854722, 0)
		bind.Size = UDim2.new(0, 340, 0, 31)
		bind.Font = Enum.Font.SourceSans
		bind.Text = `Press a key to bind {args.ModuleName}: `
		bind.TextColor3 = Color3.fromRGB(255, 255, 255)
		bind.TextScaled = true
		bind.TextSize = 14.000
		bind.TextStrokeTransparency = 0.000
		bind.TextWrapped = true

		bindcon = game:GetService("UserInputService").InputBegan:Connect(function(x)
			if x.KeyCode.Name ~= "Unknown" then
				bind.Text = `Press a key to bind {args.ModuleName}: {x.KeyCode.Name}`
				args.Module.Keybind = nil
				task.wait(0.05)
				args.Module.Keybind = x.KeyCode
				bindcon:Disconnect()
				task.wait(2)
				bind:Destroy()
			end
		end)
	end

	function MainWindow:CreateTab(args)
		local Tab = {}
		Tab.Enabled = false

		local TabFrame = Instance.new("Frame")
		local TextLabel = Instance.new("TextButton")
		local TabOptions = Instance.new("Frame")
		local hoverIndi = Instance.new("TextLabel")

		TabFrame.Name = args.Name
		TabFrame.Parent = ContentHolder
		TabFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
		TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabFrame.BorderSizePixel = 0
		TabFrame.Size = UDim2.new(1, 0, 0, 25)

		TextLabel.Parent = TabFrame
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0.0407407396, 0, 0, 0)
		TextLabel.Size = UDim2.new(0.959259272, 0, 1, 0)
		TextLabel.Font = Enum.Font.Arial
		TextLabel.TextColor3 = Color3.fromRGB(161, 161, 161)
		TextLabel.TextSize = 19.000
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.Text = args.Name

		TabOptions.Name = "TabOptions"
		TabOptions.Parent = TabFrame
		TabOptions.AnchorPoint = Vector2.new(0.5, 0)
		TabOptions.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		TabOptions.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabOptions.BorderSizePixel = 0
		TabOptions.Position = UDim2.new(0.497999996, 0, 1, 0)
		TabOptions.Size = UDim2.new(0.959259272, 0, 1, 0)
		TabOptions.Visible = false
		TabOptions.AutomaticSize = Enum.AutomaticSize.Y

		hoverIndi.Name = "hoverIndi"
		hoverIndi.Parent = TextLabel
		hoverIndi.AnchorPoint = Vector2.new(1, 0)
		hoverIndi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		hoverIndi.BackgroundTransparency = 1.000
		hoverIndi.BorderColor3 = Color3.fromRGB(0, 0, 0)
		hoverIndi.BorderSizePixel = 0
		hoverIndi.Position = UDim2.new(0.972972989, 0, 0, 0)
		hoverIndi.Size = UDim2.new(0.216216221, 0, 1, 0)
		hoverIndi.Font = Enum.Font.Gotham
		hoverIndi.Text = "<-"
		hoverIndi.TextColor3 = Color3.fromRGB(190, 190, 190)
		hoverIndi.TextScaled = true
		hoverIndi.TextSize = 14.000
		hoverIndi.TextWrapped = true
		hoverIndi.Visible = false

		TextLabel.MouseButton1Click:Connect(function()
			Tab.Enabled = not Tab.Enabled
			TextLabel.TextColor3 = Tab.Enabled and Color3.fromRGB(213, 213, 213) or Color3.fromRGB(161, 161, 161)
			TabFrame.BackgroundColor3 = Tab.Enabled and Color3.fromRGB(31, 31, 31) or Color3.fromRGB(21, 21, 21)

			for _, v in ContentHolder:GetChildren() do
				if v:IsA("Frame") and v.Name ~= args.Name then
					v.Visible = not Tab.Enabled
				end
			end

			for _, v in ContentHolder:FindFirstChild(args.Name):GetChildren() do
				if v.Name == "TabOptions" then
					v.Visible = Tab.Enabled
				end
			end
		end)

		TextLabel.MouseEnter:Connect(function()
			hoverIndi.Visible = true
		end)

		TextLabel.MouseLeave:Connect(function()
			hoverIndi.Visible = false
		end)

		function Tab:CreateOptionsButton(args)
			local OptionsButton = {Enabled = false, Keybind = nil, Name = ""}

			local UIListLayout = Instance.new("UIListLayout")
			local TextButton = Instance.new("TextButton")

			UIListLayout.Parent = TabOptions
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			TextButton.Parent = TabOptions
			TextButton.Active = false
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.BorderSizePixel = 0
			TextButton.Position = UDim2.new(0.0407407396, 0, 0, 0)
			TextButton.Selectable = false
			TextButton.Size = UDim2.new(0.959259272, 0, 1, 0)
			TextButton.Font = Enum.Font.Arial
			TextButton.Text = " "..args.Name
			TextButton.TextColor3 = Color3.fromRGB(161, 161, 161)
			TextButton.TextSize = 19.000
			TextButton.TextXAlignment = Enum.TextXAlignment.Left

			function OptionsButton.ToggleButton(value)
				OptionsButton.Enabled = value
				TextButton.TextColor3 = OptionsButton.Enabled and Color3.fromRGB(213, 213, 213) or Color3.fromRGB(161, 161, 161)
				TextButton.BackgroundColor3 = OptionsButton.Enabled and Color3.fromRGB(31, 31, 31) or Color3.fromRGB(21, 21, 21)
				args.Callback(OptionsButton.Enabled)
			end

			TextButton.MouseButton1Click:Connect(function()
				OptionsButton.Enabled = not OptionsButton.Enabled
				OptionsButton.ToggleButton(OptionsButton.Enabled)
			end)

			TextButton.MouseButton2Click:Connect(function()
				MainWindow:BindModule({ModuleName = args.Name, Module = OptionsButton})
			end)

			library.Keybinds[args.Name] = game:GetService("UserInputService").InputBegan:Connect(function(inp, gpe)
				if gpe then return end

				if inp.KeyCode == OptionsButton.Keybind then
					OptionsButton.Enabled = not OptionsButton.Enabled
					OptionsButton.ToggleButton(OptionsButton.Enabled)
				end
			end)

			return OptionsButton
		end

		function Tab:CreateLabel(args)
			local Label = {
				Text = "",
				BackgroundColor3 = Color3.new(0, 0, 0),
				ClickToCopy = false,
				CopyContent = "",
				Stroke = false,
				StrokeColor = Color3.new(1, 1, 1),
				StrokeTransparency = 1
			}

			local UIListLayout = Instance.new("UIListLayout")
			local TextButton = Instance.new("TextButton")
			local UIStroke = Instance.new("UIStroke")

			UIListLayout.Parent = TabOptions
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			TextButton.Parent = TabOptions
			TextButton.Active = false
			TextButton.BackgroundColor3 = args.BackgroundColor3
			TextButton.BackgroundTransparency = 1.000
			TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.BorderSizePixel = 0
			TextButton.Position = UDim2.new(0.0407407396, 0, 0, 0)
			TextButton.Selectable = false
			TextButton.Size = UDim2.new(0.959259272, 0, 1, 0)
			TextButton.Font = Enum.Font.Arial
			TextButton.Text = " "..args.Content
			TextButton.TextColor3 = args.TextColor3
			TextButton.TextSize = 19.000
			TextButton.TextXAlignment = Enum.TextXAlignment[args.TextAlignment]

			if args.Stroke then
				UIStroke.Parent = TextButton
				UIStroke.Color = args.StrokeColor
				TextButton.TextStrokeTransparency = args.StrokeTransparency
			else
				UIStroke:Destroy()
			end

			TextButton.MouseButton1Click:Connect(function()
				if args.ClickToCopy then
					if game:GetService("RunService"):IsStudio() then return end

					setclipboard(args.CopyContent)
				end
			end)

			return Label
		end

		function Tab:CreateTextBox(args)
			local TextBoxCreate = {}
			TextBoxCreate.Value = ""

			local TextBox = Instance.new("Frame")
			local TextBox_2 = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")

			TextBox.Name = args.Name
			TextBox.Parent = TabOptions
			TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.BackgroundTransparency = 1.000
			TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(-0.0510583222, 0, 0, 0)
			TextBox.Size = UDim2.new(0.997869432, 0, 1, 0)

			TextBox_2.Parent = TextBox
			TextBox_2.Active = false
			TextBox_2.AnchorPoint = Vector2.new(1, 0.5)
			TextBox_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			TextBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox_2.BorderSizePixel = 0
			TextBox_2.ClipsDescendants = true
			TextBox_2.Position = UDim2.new(0.976784527, 0, 0.5, 0)
			TextBox_2.Selectable = false
			TextBox_2.Size = UDim2.new(0.360000014, 0, 0.75, 0)
			TextBox_2.ZIndex = 2
			TextBox_2.ClearTextOnFocus = true
			TextBox_2.Font = Enum.Font.Gotham
			TextBox_2.Text = args.DefaultText
			TextBox_2.TextColor3 = Color3.fromRGB(161, 161, 161)
			TextBox_2.TextSize = 15.000
			TextBox_2.TextXAlignment = Enum.TextXAlignment.Right
			TextBox_2.AutomaticSize = Enum.AutomaticSize.X

			UICorner.Parent = TextBox_2
			UICorner.CornerRadius = UDim.new(0, 4)

			TextLabel.Parent = TextBox
			TextLabel.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(0.564755559, 0, 1, 0)
			TextLabel.Font = Enum.Font.Arial
			TextLabel.Text = "  "..args.Name
			TextLabel.TextColor3 = Color3.fromRGB(161, 161, 161)
			TextLabel.TextSize = 19.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			TextBox_2.FocusLost:Connect(function()
				args.FocusLost(TextBox_2.Text)
			end)

			return TextBoxCreate
		end

		function Tab:CreateSlider(args)
			local Slider = {CurrentValue = args.DefaultAmount, Name = ""}

			local SliderF = Instance.new("Frame")
			local SliderName = Instance.new("TextLabel")
			local ActualSlider = Instance.new("Frame")
			local UICornerA = Instance.new("UICorner")
			local ss = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local SliderValue = Instance.new("TextLabel")

			SliderF.Name = args.Name
			SliderF.Parent = TabOptions
			SliderF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderF.BackgroundTransparency = 1.000
			SliderF.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderF.BorderSizePixel = 0
			SliderF.Position = UDim2.new(-0.0510583222, 0, 0, 0)
			SliderF.Size = UDim2.new(1, 0, 1.5, 0)

			SliderName.Name = "SliderName"
			SliderName.Parent = SliderF
			SliderName.AnchorPoint = Vector2.new(0, 0.5)
			SliderName.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			SliderName.BackgroundTransparency = 1.000
			SliderName.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderName.BorderSizePixel = 0
			SliderName.Position = UDim2.new(0, 0, 0.233333334, 0)
			SliderName.Size = UDim2.new(0.564999998, 0, 0.5, 0)
			SliderName.Font = Enum.Font.Arial
			SliderName.Text = "  "..args.Name
			SliderName.TextColor3 = Color3.fromRGB(161, 161, 161)
			SliderName.TextSize = 19.000
			SliderName.TextXAlignment = Enum.TextXAlignment.Left

			ActualSlider.Name = "ActualSlider"
			ActualSlider.Parent = SliderF
			ActualSlider.BackgroundColor3 = args.SliderBackgroundColor or Color3.fromRGB(255, 255, 255)
			ActualSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ActualSlider.BorderSizePixel = 0
			ActualSlider.Position = UDim2.new(0.0349035077, 0, 0.666666687, 0)
			ActualSlider.Size = UDim2.new(0.922625422, 0, 0.146666661, 0)

			UICornerA.CornerRadius = UDim.new(1, 0)
			UICornerA.Parent = ActualSlider

			ss.Name = "ss"
			ss.Parent = ActualSlider
			ss.Active = false
			ss.AnchorPoint = Vector2.new(0.5, 0.5)
			ss.BackgroundColor3 = args.SliderColor or Color3.fromRGB(189, 189, 189)
			ss.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ss.BorderSizePixel = 0
			ss.Position = UDim2.new(0, 0, 0.5, 0)
			ss.Selectable = false
			ss.Size = UDim2.new(0, 12, 0, 12)
			ss.Text = ""

			UICorner_2.CornerRadius = UDim.new(1, 0)
			UICorner_2.Parent = ss
			
			SliderValue.Name = "SliderValue"
			SliderValue.Parent = SliderF
			SliderValue.AnchorPoint = Vector2.new(1, 0.5)
			SliderValue.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			SliderValue.BackgroundTransparency = 1.000
			SliderValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderValue.BorderSizePixel = 0
			SliderValue.Position = UDim2.new(0.972972989, 0, 0.233000085, 0)
			SliderValue.Size = UDim2.new(0.564999998, 0, 0.5, 0)
			SliderValue.Font = args.SliderValueFont or Enum.Font.Arial
			SliderValue.Text = args.DefaultAmount
			SliderValue.TextColor3 = args.SliderValueTextColor3 or Color3.fromRGB(161, 161, 161)
			SliderValue.TextSize = 19.000
			SliderValue.TextXAlignment = Enum.TextXAlignment.Right

			ss.MouseButton1Down:Connect(function()
				Slider.Dragging = true
			end)

			function Slider.ChangeToValue(Percent)
				local Value = math.floor(Percent*args.Max)
				return Value
			end
			Slider.ChangeToValue(args.DefaultAmount)
			
			game:GetService("UserInputService").InputChanged:Connect(function()
				if Slider.Dragging then
					local MousePos = game:GetService("UserInputService"):GetMouseLocation()+Vector2.new(0,-36)
					local RelPos = MousePos-ActualSlider.AbsolutePosition
					Slider.CurrentValue = math.clamp(RelPos.X/ActualSlider.AbsoluteSize.X,0,1)

					ss.Position = UDim2.new(Slider.CurrentValue,0,ss.Position.Y.Scale,0)
					local FinalValue = Slider.ChangeToValue(Slider.CurrentValue)

					Slider.CurrentValue = FinalValue
					SliderValue.Text = tostring(Slider.CurrentValue)
					args.Callback(Slider.CurrentValue)
				end
			end)

			game:GetService("UserInputService").InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					Slider.Dragging = false
				end
			end)

			return Slider
		end

		return Tab
	end

	return MainWindow
end

return library
