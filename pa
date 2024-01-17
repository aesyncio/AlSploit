local LocalPlayer = game.Players.LocalPlayer

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local LightingService = game:GetService("Lighting")
local PlayerService = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local WorkSpace = game:GetService("Workspace") or workspace

local AlSploit = Instance.new("ScreenGui")
local ContainerFrame = Instance.new("Frame")
local UIListLayoutContainerFrame = Instance.new("UIListLayout")
local NotificationContainer = Instance.new("Frame")

local DefaultLayoutOrder = 0

AlSploit.Name = "AlSploit"
AlSploit.Parent = LocalPlayer:WaitForChild("PlayerGui")
AlSploit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AlSploit.ResetOnSpawn = false

ContainerFrame.Name = "ContainerFrame"
ContainerFrame.Parent = AlSploit
ContainerFrame.BackgroundColor3 = Color3.new(255, 255, 255)
ContainerFrame.BackgroundTransparency = 1.000
ContainerFrame.BorderColor3 = Color3.new(0, 0, 0)
ContainerFrame.BorderSizePixel = 0
ContainerFrame.Position = UDim2.new(0, 0, 0, 0)
ContainerFrame.Size = UDim2.new(1, 0, 1, 0)
ContainerFrame.Visible = false

UIListLayoutContainerFrame.Parent = ContainerFrame
UIListLayoutContainerFrame.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayoutContainerFrame.Padding = UDim.new(0, 50)
UIListLayoutContainerFrame.FillDirection = Enum.FillDirection.Horizontal
UIListLayoutContainerFrame.HorizontalAlignment = Enum.HorizontalAlignment.Center

NotificationContainer.Name = "NotificationContainer"
NotificationContainer.Parent = AlSploit
NotificationContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotificationContainer.BackgroundTransparency = 1.000
NotificationContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
NotificationContainer.BorderSizePixel = 0
NotificationContainer.Position = UDim2.new(0.842737675, 0, 0, 0)
NotificationContainer.Size = UDim2.new(0.157002911, 0, 0.980487823, 0)

local UIAspectRatioConstraintOpen = Instance.new("UIAspectRatioConstraint")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local Open = Instance.new("ImageButton")

UIStroke.Parent = Open
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 2
UIStroke.Color = Color3.new(0.635294, 0.313725, 1)

Open.Name = "Open"
Open.Parent = AlSploit
Open.BackgroundColor3 = Color3.new(255, 255, 255)
Open.BorderColor3 = Color3.new(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.963096738, 0, 0.351765305, 0)
Open.Size = UDim2.new(0.0329854637, 0, 0.0837961882, 0)
Open.Image = "rbxassetid://15428841655"

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Open

UIAspectRatioConstraintOpen.Parent = Open
UIAspectRatioConstraintOpen.AspectRatio = 1

local Blur = Instance.new("BlurEffect")

Blur.Parent = LightingService
Blur.Enabled = false
Blur.Size = 16

task.spawn(function()
	Open.Activated:Connect(function()
		ContainerFrame.Visible = not ContainerFrame.Visible
		Blur.Enabled = not Blur.Enabled
	end)
end)

local function CreateTab(Name)
	local Tab = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local CornerFix = Instance.new("Frame")
	local ModulesContainer = Instance.new("Frame")	
	local UIListLayout = Instance.new("UIListLayout")	
	local Title = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	
	Tab.Name = "Tab"
	Tab.Parent = ContainerFrame
	Tab.BackgroundColor3 = Color3.new(0, 0, 0)
	Tab.BorderColor3 = Color3.new(0, 0, 0)
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0.434123844, 0, 0, 0)
	Tab.Size = UDim2.new(0.142, 0, 0.049, 0)
	
	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.Parent = Tab
	
	CornerFix.Name = "CornerFix"
	CornerFix.Parent = Tab
	CornerFix.BackgroundColor3 = Color3.new(0, 0, 0)
	CornerFix.BorderColor3 = Color3.new(0, 0, 0)
	CornerFix.BorderSizePixel = 0
	CornerFix.Position = UDim2.new(0, 0, 0.371, 0)
	CornerFix.Size = UDim2.new(1, 0, 0.629, 0)

	ModulesContainer.Name = "ModulesContainer"
	ModulesContainer.Parent = Tab
	ModulesContainer.BackgroundColor3 = Color3.new(255, 255, 255)
	ModulesContainer.BackgroundTransparency = 1.000
	ModulesContainer.BorderColor3 = Color3.new(0, 0, 0)
	ModulesContainer.BorderSizePixel = 0
	ModulesContainer.Position = UDim2.new(0, 0, 1, 0)
	ModulesContainer.Size = UDim2.new(1, 0, 21.4285717, 0)
	
	UIListLayout.Parent = ModulesContainer
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.FillDirection = Enum.FillDirection.Vertical
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder	

	Title.Name = "Title"
	Title.Parent = Tab
	Title.BackgroundColor3 = Color3.new(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.new(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0, 0, 0.123508625, 0)
	Title.Size = UDim2.new(0.99999994, 0, 0.742857158, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = Name
	Title.TextColor3 = Color3.new(255, 255, 255)
	Title.TextSize = 17
	Title.TextWrapped = true
	
	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.843137, 0.686275, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Title
	
	return ModulesContainer
end

local function CreateToggle(Parent, Name, DefaultValue, CallBack)
	local Toggle = Instance.new("TextButton")
	local UIPadding = Instance.new("UIPadding")
	local UIGradient = Instance.new("UIGradient")
	local DropDownButton = Instance.new("ImageButton")
	
	local CallBackValue = not DefaultValue
	
	local LayoutOrder = 0
	
	local function CallBackToggle(Value)
		if Value == true then
			CallBack(true)
			
			CallBackValue = true
			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
		end
		
		if Value == false then
			CallBack(false)
			
			CallBackValue = false
			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
		end
	end
	
	CallBackToggle(not CallBackValue)

	Toggle.Name = "Toggle"
	Toggle.Parent = Parent
	Toggle.BackgroundColor3 = Color3.new(0, 0, 0)
	Toggle.BackgroundTransparency = 0.150
	Toggle.BorderColor3 = Color3.new(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Size = UDim2.new(1, 0, 0.0469164699, 0)
	Toggle.AutoButtonColor = false
	Toggle.Font = Enum.Font.GothamBold
	Toggle.Text = Name
	Toggle.TextColor3 = Color3.new(255, 255, 255)
	Toggle.TextSize = 12.000
	Toggle.TextXAlignment = Enum.TextXAlignment.Left
	Toggle.LayoutOrder = DefaultLayoutOrder + 5

	LayoutOrder = Toggle.LayoutOrder
	DefaultLayoutOrder = LayoutOrder
	
	UIPadding.Parent = Toggle
	UIPadding.PaddingLeft = UDim.new(0, 15)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Toggle

	DropDownButton.Name = "DropDownButton"
	DropDownButton.Parent = Toggle
	DropDownButton.BackgroundColor3 = Color3.new(255, 255, 255)
	DropDownButton.BackgroundTransparency = 1.000
	DropDownButton.BorderColor3 = Color3.new(0, 0, 0)
	DropDownButton.BorderSizePixel = 0
	DropDownButton.Position = UDim2.new(0.835, 0, 0.163, 0)
	DropDownButton.Rotation = 90.000
	DropDownButton.Size = UDim2.new(0.132, 0, 0.668, 0)
	DropDownButton.Image = "http://www.roblox.com/asset/?id=12809025337"

	task.spawn(function()
		Toggle.Activated:Connect(function()
			CallBackToggle(not CallBackValue)
		end)
	end)
	
	return Toggle, DropDownButton, LayoutOrder, UIGradient
end

local function CreateKeyBind(Parent, DefaultValue, LayoutOrder, CallBack)
	local KeyBind = Instance.new("TextButton")
	local UIGradient = Instance.new("UIGradient")

	local function CallBackToggle(Value)
		CallBack(Value)
	end

	KeyBind.Name = "KeyBind"
	KeyBind.Parent = Parent
	KeyBind.BackgroundColor3 = Color3.new(0, 0, 0)
	KeyBind.BackgroundTransparency = 0.150
	KeyBind.BorderColor3 = Color3.new(0, 0, 0)
	KeyBind.BorderSizePixel = 0
	KeyBind.Position = UDim2.new(0, 0, 0.0765417367, 0)
	KeyBind.Size = UDim2.new(0.99999994, 0, 0.0353890099, 0)
	KeyBind.AutoButtonColor = false
	KeyBind.Font = Enum.Font.GothamBold
	KeyBind.Text = "KeyBind: " .. DefaultValue
	KeyBind.TextColor3 = Color3.new(255, 255, 255)
	KeyBind.TextSize = 11.000
	KeyBind.LayoutOrder = LayoutOrder

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = KeyBind
	
	task.spawn(function()
		local InputValue = false
		local Value = false
		
		KeyBind.Activated:Connect(function()
			if Value == false then
				InputValue = true	
				KeyBind.Text = "..."
			end
			
			if Value == true and InputValue == true then
				KeyBind.Text = "KeyBind: " .. "..."
				InputValue = false
				CallBackToggle("...")
			end
			
			Value = not Value
		end)
		
		task.spawn(function()
			UserInputService.InputBegan:Connect(function(Input)
				if InputValue == true and not UserInputService:GetFocusedTextBox() then
					if Input.KeyCode and Input.UserInputType == Enum.UserInputType.Keyboard then
						KeyBind.Text = "KeyBind: " .. Input.KeyCode.Name
						
						CallBackToggle(Input.KeyCode.Name)
						InputValue = false
					end
				end
			end)
		end)
	end)
	
	return KeyBind
end

local function CreateMiniToggle(Parent, Name, DefaultValue, LayoutOrder, CallBack)
	local MiniToggle = Instance.new("TextButton")
	local UIGradient = Instance.new("UIGradient")

	local CallBackValue = not DefaultValue

	local function CallBackToggle(Value)
		if Value == true then
			CallBack(true)

			CallBackValue = true
			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
		end

		if Value == false then
			CallBack(false)

			CallBackValue = false
			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
		end
	end

	CallBackToggle(not CallBackValue)

	MiniToggle.Name = "MiniToggle"
	MiniToggle.Parent = Parent
	MiniToggle.BackgroundColor3 = Color3.new(0, 0, 0)
	MiniToggle.BackgroundTransparency = 0.150
	MiniToggle.BorderColor3 = Color3.new(0, 0, 0)
	MiniToggle.BorderSizePixel = 0
	MiniToggle.Position = UDim2.new(0, 0, 0.0765417367, 0)
	MiniToggle.Size = UDim2.new(0.99999994, 0, 0.0353890099, 0)
	MiniToggle.AutoButtonColor = false
	MiniToggle.Font = Enum.Font.GothamBold
	MiniToggle.Text = "CustomAnimation"
	MiniToggle.TextColor3 = Color3.new(255, 255, 255)
	MiniToggle.TextSize = 11.000
	MiniToggle.LayoutOrder = LayoutOrder

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = MiniToggle
	
	task.spawn(function()
		MiniToggle.Activated:Connect(function()
			CallBackToggle(not CallBackValue)
		end)
	end)
	
	return MiniToggle
end

local function CreateSlider(Parent, Name, DefaultValue, MaximumValue, LayoutOrder, CallBack)
	local Slider = Instance.new("Frame")
	local SliderFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Bar = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local UIStroke = Instance.new("UIStroke")
	
	local Title = Instance.new("TextLabel")
	local UIGradient_2 = Instance.new("UIGradient")
	local Fill = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIGradient_3 = Instance.new("UIGradient")

	Slider.Name = "Slider"
	Slider.Parent =  Parent
	Slider.BackgroundColor3 = Color3.new(0, 0, 0)
	Slider.BackgroundTransparency = 0.150
	Slider.BorderColor3 = Color3.new(0, 0, 0)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0, 0, 0.116778016, 0)
	Slider.Size = UDim2.new(0.99999994, 0, 0.0687298849, 0)
	Slider.LayoutOrder = LayoutOrder

	SliderFrame.Name = "SliderFrame"
	SliderFrame.Parent = Slider
	SliderFrame.BackgroundColor3 = Color3.new(255, 255, 255)
	SliderFrame.BackgroundTransparency = 1.000
	SliderFrame.BorderColor3 = Color3.new(0, 0, 0)
	SliderFrame.BorderSizePixel = 0
	SliderFrame.Position = UDim2.new(0.150000006, 0, 0.581818163, 0)
	SliderFrame.Size = UDim2.new(0.699999988, 0, 0.145454541, 0)

	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.Parent = SliderFrame

	Bar.Name = "Bar"
	Bar.Parent = SliderFrame
	Bar.BackgroundColor3 = Color3.new(255, 255, 255)
	Bar.BorderColor3 = Color3.new(0, 0, 0)
	Bar.BorderSizePixel = 0
	Bar.Position = UDim2.new(0.142857149, 0, -1.36341882, 0)
	Bar.Size = UDim2.new(0.0571428575, 0, 3.5, 0)
	Bar.ZIndex = 2
	Bar.AutoButtonColor = false
	Bar.Font = Enum.Font.SourceSans
	Bar.Text = ""
	Bar.TextColor3 = Color3.new(0, 0, 0)
	Bar.TextSize = 14.000

	UICorner_2.CornerRadius = UDim.new(0, 12)
	UICorner_2.Parent = Bar

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient.Parent = Bar
	
	UIStroke.Parent = Bar
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.new(0, 0, 0)

	Title.Name = "Title"
	Title.Parent = SliderFrame
	Title.BackgroundColor3 = Color3.new(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.new(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.321428567, 0, -3.7615819, 0)
	Title.Size = UDim2.new(0.357142866, 0, 2.5, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = "Range: 18"
	Title.TextColor3 = Color3.new(255, 255, 255)
	Title.TextSize = 11.00

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient_2.Rotation = 90
	UIGradient_2.Parent = Title

	Fill.Name = "Fill"
	Fill.Parent = SliderFrame
	Fill.BackgroundColor3 = Color3.new(255, 255, 255)
	Fill.BorderColor3 = Color3.new(0, 0, 0)
	Fill.BorderSizePixel = 0
	Fill.Size = UDim2.new(1, 0, 1, 0)

	UICorner_3.CornerRadius = UDim.new(0, 12)
	UICorner_3.Parent = Fill

	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient_3.Parent = Fill
	
	local Debounce = true

	local function Snap(Number, Factor)
		if Factor == 0 then
			return Number
		else
			return math.floor(Number / Factor + 0.5) * Factor
		end
	end

	task.spawn(function()
		Bar.MouseButton1Down:Connect(function()
			Debounce = false
		end)

		UserInputService.InputEnded:connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				Debounce = true
			end
		end)
	end)

	task.spawn(function()
		local BarPosition = Bar.Position

		local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
		local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(DefaultValue / MaximumValue - 0.05, 0, BarPosition.Y.Scale, BarPosition.Y.Offset)})

		PositionTween:Play()

		local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
		local SizeTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(DefaultValue / MaximumValue, 0, 1, 0)})

		SizeTween:Play()
	end)

	task.spawn(function()
		repeat
			task.wait()

			if Debounce == false then
				local MousePosition = UserInputService:GetMouseLocation().X
				local BarPosition = Bar.Position
				local FrameSize = Slider.AbsoluteSize.X
				local FramePosition = Slider.AbsolutePosition.X

				local Position = Snap((MousePosition - FramePosition) / FrameSize, 0.01)

				local Percentage = math.clamp(Position, 0, 1)

				local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
				local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(Percentage, 0, BarPosition.Y.Scale, BarPosition.Y.Offset)})

				PositionTween:Play()

				local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
				local SizeTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(Percentage, 0, 1, 0)})

				SizeTween:Play()

				Title.Text = Name .. ": " .. math.round(Percentage * MaximumValue)

				CallBack(math.round(Percentage * MaximumValue))
			end
		until not Slider
	end)

	return Slider
end

local function CreateNotification(Duration, Message)
	local UIListLayout = Instance.new("UIListLayout")
	local Notification = Instance.new("Frame")
	local UIStroke = Instance.new("UIStroke")
	local UIGradient = Instance.new("UIGradient")
	local UICorner = Instance.new("UICorner")
	local Text = Instance.new("TextLabel")
	
	UIListLayout.Parent = NotificationContainer
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout.Padding = UDim.new(0, 10)

	Notification.Name = "Notification"
	Notification.Parent = NotificationContainer
	Notification.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Notification.BackgroundTransparency = 0.150
	Notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(0.226286799, 0, 0, 0)
	Notification.Size = UDim2.new(0, 0, 0, 0)
	
	UIStroke.Parent = Notification
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.new(0, 0, 0, 0)
	
	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient.Parent = UIStroke

	UICorner.Parent = Notification
	UICorner.CornerRadius = UDim.new(0, 6)

	Text.Name = "Text"
	Text.Parent = Notification
	Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text.BackgroundTransparency = 1.000
	Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Text.BorderSizePixel = 0
	Text.Position = UDim2.new(-0.00263573672, 0, 0, 0)
	Text.Size = UDim2.new(0.999999881, 0, 1.0000006, 0)
	Text.Font = Enum.Font.GothamBold
	Text.Text = Message
	Text.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text.TextSize = 8.00
	
	task.spawn(function()
		local NotificationSize = UDim2.new(0.999167681, 0, 0.103658535, 0)

		local TweenInformation = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
		local SizeTween = TweenService:Create(Notification, TweenInformation, {Size = NotificationSize})

		SizeTween:Play()
	end)
	
	task.spawn(function()
		task.wait(Duration)
		
		local NotificationSize = UDim2.new(0, 0, 0, 0)

		local TweenInformation = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
		local SizeTween = TweenService:Create(Notification, TweenInformation, {Size = NotificationSize})

		SizeTween:Play()
		
		task.spawn(function()
			task.wait(Duration + TweenInformation.Time)
			
			Notification:Destroy()
			Text:Destroy()
		end)
	end)
end

local Camera = WorkSpace.CurrentCamera
local OrigC0 = ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0

local KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local Client = require(ReplicatedStorage.TS.remotes).default.Client

local HannahPromptTriggerRemote = Client:Get("HannahPromptTrigger")
local SetObservedChestRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("Inventory/SetObservedChest")
local ResetCharacterRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ResetCharacter")
local ChestGiveItemRemote =  ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("Inventory/ChestGiveItem")
local ChestGetItemRemote =  ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("Inventory/ChestGetItem")
local BlockPlacingRemote =  ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@easy-games"):WaitForChild("block-engine"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("PlaceBlock")
local ClientHandlerStore = require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
local SendMessageRemote = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local ProjectileRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ProjectileFire")
local ElkSummonRemote = ReplicatedStorage:WaitForChild("events-@easy-games/game-core:shared/game-core-networking@getEvents.Events"):WaitForChild("useAbility")
local PlayAgainRemote = ReplicatedStorage:WaitForChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events")
local EquipItemRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SetInvItem")
local GroundHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("GroundHit")
local DamageIndicator = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator
local SwordController = KnitClient.Controllers.SwordController
local ProjectileMeta = require(ReplicatedStorage.TS.projectile["projectile-meta"]).ProjectileMeta
local SwordHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SwordHit")
local CombatConstant = require(ReplicatedStorage.TS.combat["combat-constant"]).CombatConstant
local PlacementCPS = require(game.ReplicatedStorage.TS["shared-constants"]).CpsConstants

local KnockBackTable = debug.getupvalue(require(ReplicatedStorage.TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)
local ItemTable = debug.getupvalue(require(ReplicatedStorage.TS.item["item-meta"]).getItemMeta, 1)

local ZephyrController = KnitClient.Controllers.WindWalkerController
local SprintController = KnitClient.Controllers.SprintController
local FovController = KnitClient.Controllers.FovController

local InventoryUtil = require(ReplicatedStorage.TS.inventory["inventory-util"]).InventoryUtil
local ItemTable = debug.getupvalue(require(ReplicatedStorage.TS.item["item-meta"]).getItemMeta, 1)

local KillAuraAnimationCooldown = true

local Animations = {
	KillAura = {
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(220), math.rad(100), math.rad(100)),Time = 0.25},
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
	}
}

local Settings = {
	NoPlacementCps = {Value = true, KeyBind = "..."},
	ChestStealer = {Value = true, KeyBind = "..."},
	InfiniteJump = {Value = true, KeyBind = "..."},
	DamageBoost = {Value = true},
	ChatSpammer = {Value = false, Speed = 50, KeyBind = "..."},
	AcDisabler = {Value = true, KeyBind = "..."},
	FpsBooster = {Value = false, KeyBind = "..."},
	Indicators = {Value = true, KeyBind = "..."},
	AutoToxic = {Value = false, KeyBind = "..."},
	GalaxySky = {Value = true, KeyBind = "..."},
	PlayAgain = {Value = true, KeyBind = "..."},
	Invisible = {Value = false, KeyBind = "..."},
	AimAssist = {Value = true, KeyBind = "..."},
	Scaffold = {Value = false, KeyBind = "..."},
	KillAura = {Value = true, Range = 20, CustomAnimation = true, ToolCheck = false, KeyBind = "..."},
	Velocity = {Value = true, KeyBind = "..."},	
	AntiVoid = {Value = true, Transparency = 0.65, KeyBind = "..."},
	AutoBank = {Value = true, KeyBind = "..."},
	HighJump = {Value = false, KeyBind = "..."},
	PlayerTp = {Value = true, KeyBind = "..."},
	AutoKit = {Value = true, KeyBind = "..."},
	AutoBuy = {Value = true, KeyBind = "..."},
	Sprint = {Value = true, KeyBind = "..."},
	NoFall = {Value = true, KeyBind = "..."},
	Aimbot = {Value = true, KeyBind = "...", ToolCheck = false},
	Speed = {Value = true, Speed = 23, KeyBind = "..."},
	Reach = {Value = true, KeyBind = "..."},
	Nuker = {Value = true, Range = 30, BreakOres = true, KeyBind = "..."},
	BedTp = {Value = true, KeyBind = "..."},
	Cape = {Value = true, KeyBind = "..."},
	Esp = {Value = true, KeyBind = "..."},
	Fov = {Value = false, Fov = 100, KeyBind = "..."}
}

local function FindNearestEntity(MaxDistance)
	local NearestEntityDistance = MaxDistance or math.huge
	local NearestEntity = nil
	local IsNotAPlayer = true
	
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("DiamondGuardian") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and  Distance <= Settings.KillAura.Range then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end 
		end
	end)
	
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("GolemBoss") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= Settings.KillAura.Range then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end
		end
	end)	
	
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("Monster") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= Settings.KillAura.Range then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end
		end
	end)
	
	task.spawn(function()
		for i, v in next, PlayerService:GetPlayers() do
			if IsAlive(v) and v.Team ~= LocalPlayer.Team then
				local Distance = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= Settings.KillAura.Range then
					NearestEntityDistance = Distance
					NearestEntity= v
					IsNotAPlayer = false
				end
			end
		end
	end)

	if NearestEntity then	
		return (IsNotAPlayer and NearestEntity or NearestEntity.Character), NearestEntityDistance
	end
	
	return nil
end

local function HashFunction(Value)
	return {value = Value}
end

local function GetInventory(Player)
	local Player = Player or LocalPlayer
	
	local Inventory = InventoryUtil.getInventory(Player).items
	
	return Inventory
end

local function GetMatchState()
	return ClientHandlerStore:getState().Game.matchState
end

function SwitchItem(Item)
	if LocalPlayer.Character.HandInvItem.Value ~= Item then
		Client:Get(EquipItemRemote):CallServerAsync({hand = Item})
	end	
end

local function GetSword()
	local HighestDamage, Sword = -math.huge, nil

	for i, v in next, GetInventory(LocalPlayer) do 
		local SwordMetaGame = ItemTable[v.itemType].sword

		if SwordMetaGame then
			local SwordDamage = SwordMetaGame.damage / SwordMetaGame.attackSpeed

			if SwordDamage > HighestDamage then
				HighestDamage = SwordDamage
				Sword = v
			end
		end
	end

	return Sword
end

function IsAlive(Player)
	Player = Player or LocalPlayer

	if not Player.Character then return false end
	if not Player.Character:FindFirstChild("Humanoid") then return false end
	if Player.Character:GetAttribute("Health") <= 0 then return false end
	if not Player.Character.PrimaryPart then return false end	

	return true
end	

task.spawn(function()
	local function SwordHit(Entity, Weapon)
		local LocalPlayerHumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
		local EntityPrimaryPart = Entity.PrimaryPart

		local SelfPosition = LocalPlayerHumanoidRootPart.Position + (20 > 14 and (LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EntityPrimaryPart.Position).lookVector * ((LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude - 14)) or Vector3.zero)

		task.spawn(function()
			if Settings.KillAura.ToolCheck == false then
				SwitchItem(Weapon.tool)
			end
		end)

		task.spawn(function()
			if KillAuraAnimationCooldown and Settings.KillAura.CustomAnimation == true then
				KillAuraAnimationCooldown = false

				for i, v in next, Animations.KillAura do
					local AnimationTween = TweenService:Create(Camera.Viewmodel.RightHand.RightWrist, TweenInfo.new(v.Time), {C0 = OrigC0 * v.CFrame}):Play()

					task.wait(v.Time - 0.01)
				end

				KillAuraAnimationCooldown = true
			end
		end)

		task.spawn(function()
			SelfPosition = LocalPlayerHumanoidRootPart.Position + (20 > 14 and (LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EntityPrimaryPart.Position).lookVector * ((LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude - 14)) or Vector3.zero)

			SwordHitRemote:FireServer({
				weapon = Weapon.tool,
				chargedAttack = {chargeRatio = 0},
				entityInstance = Entity,
				validate = {
					raycast = {
						cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
						cursorDirection = HashFunction(CFrame.new(SelfPosition, EntityPrimaryPart.Position).lookVector)
					},
					targetPosition = HashFunction(EntityPrimaryPart.Position),
					selfPosition = HashFunction(SelfPosition)
				}
			})
		end)	
	end

	task.spawn(function()
		repeat
			task.wait()

			if Settings.KillAura.Value == true and IsAlive(LocalPlayer) then
				local NearestEntity = FindNearestEntity(Settings.KillAura.Range)
				local Sword = GetSword()

				if NearestEntity and Sword then
					SwordHit(NearestEntity, Sword)
				end
			end
		until not game
	end)
end)

task.spawn(function()
	local OldReach = CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE

	CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = 20
	
	KnockBackTable.kbDirectionStrength = 0
	KnockBackTable.kbUpwardStrength = 0	
end)

task.spawn(function()
	repeat
		task.wait(0.5)

		if Settings.NoFall.Value == true then
			GroundHitRemote:FireServer()
		end
	until not game
end)

task.spawn(function()
	if Settings.AimAssist.Value == true then
		local NearestEntity = FindNearestEntity(18)

		if IsAlive(LocalPlayer) and Settings.AimAssist.Value == true and NearestEntity then
			local LookVector = (NearestEntity.PrimaryPart.Position - Camera.CFrame.Position).unit

			Camera.CFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + LookVector)
		end
	end
end)

local CombatTab = CreateTab("Combat")
local UtilityTab = CreateTab("Utility")
local BlatantTab = CreateTab("Blatant")
local WorldTab = CreateTab("World")

task.spawn(function()
	local KillAura, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "KillAura", Settings.KillAura.Value, function(CallBack)
		Settings.KillAura.Value = CallBack
		
		CreateNotification(5, "This module has been toggled!")
	end)
	
	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.KillAura.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.KillAura.KeyBind = CallBack
				end)

				UserInputService.InputBegan:Connect(function(Input)
					if not UserInputService:GetFocusedTextBox() then
						if Input.KeyCode.Name == Settings.KillAura.KeyBind then
							Settings.KillAura.Value = not Settings.KillAura.Value

							if Settings.KillAura.Value == true then
								UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
							end

							if Settings.KillAura.Value == false then
								UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
							end
						end
					end
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
	
	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(CombatTab, "CustomAnimation", Settings.KillAura.CustomAnimation, LayoutOrder + 2, function(CallBack)
					Settings.KillAura.CustomAnimation = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
	
	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(CombatTab, "Range", Settings.KillAura.Range, 18, LayoutOrder + 3, function(CallBack)
					Settings.KillAura.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)
