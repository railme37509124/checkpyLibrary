local library = {}
library.Objects = {}
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

	MainWindow.checkpy.Name = "checkpy"
	MainWindow.checkpy.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	MainWindow.checkpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	checkpyMain.Name = "checkpyMain"
	checkpyMain.Parent = MainWindow.checkpy
	checkpyMain.BackgroundColor3 = Color3.fromRGB(4, 4, 4)
	checkpyMain.BackgroundTransparency = 0.150
	checkpyMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
	checkpyMain.BorderSizePixel = 0
	checkpyMain.Position = UDim2.new(0, 15, 0, 15)
	checkpyMain.Size = UDim2.new(0, 270, 0, 480)
	
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
	
	function MainWindow:CreateTab(args)
		local Tab = {}
		Tab.Enabled = false
		
		local TabFrame = Instance.new("Frame")
		local TextLabel = Instance.new("TextButton")
		local TabOptions = Instance.new("Frame")

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
		
		function Tab:CreateOptionsButton(args)
			local OptionsButton = {}
			OptionsButton.Enabled = false

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
			
			TextButton.MouseButton1Click:Connect(function()
				OptionsButton.Enabled = not OptionsButton.Enabled
				TextButton.TextColor3 = OptionsButton.Enabled and Color3.fromRGB(213, 213, 213) or Color3.fromRGB(161, 161, 161)
				TextButton.BackgroundColor3 = OptionsButton.Enabled and Color3.fromRGB(31, 31, 31) or Color3.fromRGB(21, 21, 21)
				args.Callback(OptionsButton.Enabled)
			end)
			
			return OptionsButton
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
		
		return Tab
	end
	
	return MainWindow
end

return library
