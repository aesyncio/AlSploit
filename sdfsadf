local LocalPlayer = game.Players.LocalPlayer

local Camera = game.Workspace.CurrentCamera

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LightingService = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9)
local Balls = workspace:WaitForChild("Balls", 9e9)

local AlSploit = Instance.new("ScreenGui")
local ContainerFrame = Instance.new("Frame")
local UIListLayoutContainerFrame = Instance.new("UIListLayout")

AlSploit.Name = "AlSploit"
AlSploit.Parent = LocalPlayer:WaitForChild("PlayerGui")
AlSploit.ResetOnSpawn = false
AlSploit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ContainerFrame.Name = "ContainerFrame"
ContainerFrame.Parent = AlSploit
ContainerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ContainerFrame.BackgroundTransparency = 1.000
ContainerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ContainerFrame.BorderSizePixel = 0
ContainerFrame.Position = UDim2.new(0, 0, 0.0688705221, 0)
ContainerFrame.Size = UDim2.new(1, 0, 0.970330596, 0)
ContainerFrame.Visible = false

UIListLayoutContainerFrame.Parent = ContainerFrame
UIListLayoutContainerFrame.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayoutContainerFrame.Padding = UDim.new(0, 50)
UIListLayoutContainerFrame.FillDirection = Enum.FillDirection.Horizontal
UIListLayoutContainerFrame.HorizontalAlignment = Enum.HorizontalAlignment.Center

local Open = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

Open.Name = "Open"
Open.Parent = AlSploit
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.966929078, 0, 0.331897765, 0)
Open.Size = UDim2.new(0.033002343, 0, 0.0827814564, 0)
Open.Image = "rbxassetid://15428841655"

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Open

UIAspectRatioConstraint.Parent = Open
UIAspectRatioConstraint.AspectRatio = 0.985

task.spawn(function()
	Open.Activated:Connect(function()
		ContainerFrame.Visible = not ContainerFrame.Visible
	end)
end)

function CreateWindow(Name)
	local MainFrame = Instance.new("Frame")
	local TopFrame = Instance.new("Frame")
	local Decoration = Instance.new("Frame")
	local Decoration_2 = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local Public = Instance.new("ImageButton")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local Settings = Instance.new("ImageButton")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ContainerFrame
	MainFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.0947093368, 0, 0.0283905398, 0)
	MainFrame.Size = UDim2.new(0.137, 0, 0.675, 0)

	TopFrame.Name = "TopFrame"
	TopFrame.Parent = MainFrame
	TopFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	TopFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TopFrame.BorderSizePixel = 0
	TopFrame.Size = UDim2.new(0.984210551, 0, 0.0850000009, 0)

	Decoration.Name = "Decoration"
	Decoration.Parent = TopFrame
	Decoration.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Decoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Decoration.BorderSizePixel = 0
	Decoration.Position = UDim2.new(0, 0, 1, 0)
	Decoration.Size = UDim2.new(1, 0, 0.176470593, 0)

	Decoration_2.Name = "Decoration"
	Decoration_2.Parent = TopFrame
	Decoration_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Decoration_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Decoration_2.BorderSizePixel = 0
	Decoration_2.Position = UDim2.new(0, 0, 1.17647064, 0)
	Decoration_2.Size = UDim2.new(1, 0, 0.0588235296, 0)

	Title.Name = "Title"
	Title.Parent = TopFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.208556145, 0, 0, 0)
	Title.Size = UDim2.new(0.657754004, 0, 1.32352936, 0)
	Title.Font = Enum.Font.FredokaOne
	Title.FontFace.Style = Enum.FontStyle.Italic
	Title.FontFace.Weight = Enum.FontWeight.Bold
	Title.Text = Name
	Title.TextColor3 = Color3.fromRGB(207, 207, 207)
	Title.TextSize = 19.000
	Title.TextXAlignment = Enum.TextXAlignment.Left

	UIAspectRatioConstraint.Parent = Title
	UIAspectRatioConstraint.AspectRatio = 2.733

	Public.Name = "Public"
	Public.Parent = TopFrame
	Public.BackgroundTransparency = 1.000
	Public.LayoutOrder = 6
	Public.Position = UDim2.new(0.0421922654, 0, 0.292541951, 0)
	Public.Size = UDim2.new(0.133689836, 0, 0.735294104, 0)
	Public.ZIndex = 2
	Public.Image = "rbxassetid://3926305904"
	Public.ImageColor3 = Color3.fromRGB(207, 207, 207)
	Public.ImageRectOffset = Vector2.new(604, 324)
	Public.ImageRectSize = Vector2.new(36, 36)

	UIAspectRatioConstraint_2.Parent = Public

	Settings.Name = "Settings"
	Settings.Parent = TopFrame
	Settings.BackgroundTransparency = 1.000
	Settings.Position = UDim2.new(0.833517313, 0, 0.263130188, 0)
	Settings.Size = UDim2.new(0.133689836, 0, 0.735294104, 0)
	Settings.ZIndex = 2
	Settings.Image = "rbxassetid://3926307971"
	Settings.ImageColor3 = Color3.fromRGB(207, 207, 207)
	Settings.ImageRectOffset = Vector2.new(324, 124)
	Settings.ImageRectSize = Vector2.new(36, 36)

	UIAspectRatioConstraint_3.Parent = Settings

	UICorner.Parent = TopFrame

	UICorner_2.Parent = MainFrame


	UIListLayout.Parent = MainFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)

	return MainFrame
end

function CreateToggle(Parent, Name, DefaultValue, Callback)

	Callback = Callback or function () end

	local Toggle = Instance.new("TextButton")
	local Add = Instance.new("ImageButton")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
	local UIListLayout_2 = Instance.new("UIListLayout")

	Toggle.Name = "Toggle"
	Toggle.Parent = Parent
	Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Toggle.BackgroundTransparency = 1.000
	Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0.036842104, 0, 0.0850000009, 0)
	Toggle.Size = UDim2.new(0.984210551, 0, 0.125, 0)
	Toggle.Font = Enum.Font.FredokaOne
	Toggle.Text = "  " .. Name
	Toggle.TextColor3 = Color3.fromRGB(218, 218, 218)
	Toggle.TextSize = 21.000
	Toggle.TextXAlignment = Enum.TextXAlignment.Left

	Add.Name = "Add"
	Add.Parent = Toggle
	Add.BackgroundTransparency = 1.000
	Add.LayoutOrder = 3
	Add.Position = UDim2.new(0.800000012, 0, 0.25, 0)
	Add.Size = UDim2.new(0.133689836, 0, 0.5, 0)
	Add.ZIndex = 2
	Add.Image = "rbxassetid://3926307971"
	Add.ImageRectOffset = Vector2.new(324, 364)
	Add.ImageRectSize = Vector2.new(36, 36)

	UIAspectRatioConstraint_4.Parent = Add

	UIAspectRatioConstraint_5.Parent = Toggle
	UIAspectRatioConstraint_5.AspectRatio = 3.740

	UIListLayout_2.Parent = ContainerFrame
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 130)
	
	local Checker = {["Enabled"] = false}

	function Checker:Toggle(Bool)
		Bool = Bool or (not Checker["Enabled"])
		Checker["Enabled"] = Bool

		if not Bool then
			spawn(function()
				Callback(false)
				Toggle.TextColor3 = Color3.fromRGB(226, 226, 226)
			end)
		else
			spawn(function()
				Callback(true)
				Toggle.TextColor3 = Color3.new(0.635294, 0.313725, 1)
			end)
		end
	end

	if DefaultValue == true then
		Checker:Toggle()
	end

	task.spawn(function()
		Toggle.Activated:Connect(function()
			Checker:Toggle()	
		end)
	end)	

	return Toggle
end

local Settings = {
	GalaxySky = {Value = false},
	AutoParry = {Value = true},
	AutoTp = {Value = false} 
}

function VerifyBall(Ball)
	if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(Balls) and Ball:GetAttribute("realBall") == true then
		return true
	end
end

function IsTarget()
	return (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Highlight"))
end

function IsAlive(Player)
	Player = Player or LocalPlayer
	if not Player.Character then return false end
	if not Player.Character:FindFirstChild("Head") then return false end
	if not Player.Character:FindFirstChild("Humanoid") then return false end
	if Player.Character:FindFirstChild("Humanoid").Health < 0.11 then return false end
	if not Player.Character:FindFirstChild("HumanoidRootPart") then return false end

	return true
end

function Parry()
	Remotes:WaitForChild("ParryButtonPress"):Fire()
end

task.spawn(function()
	local Cooldown = false	

	while task.wait(0.05) do
		if LightingService:FindFirstChild("Sky") and Settings.GalaxySky.Value == true and Cooldown == false then
			LightingService.Sky.Parent = ReplicatedStorage

			local Sky = Instance.new("Sky")
			local ID = 8281961896

			Sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. ID
			Sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. ID
			Sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. ID
			Sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. ID
			Sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. ID
			Sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. ID

			Sky.Parent = LightingService

			Cooldown = true
		end

		if ReplicatedStorage:FindFirstChild("Sky") and LightingService:FindFirstChild("Sky") and Settings.GalaxySky.Value == false then
			LightingService.Sky:Destroy()

			ReplicatedStorage.Sky.Parent = LightingService 

			Cooldown = false
		end
	end
end)

Balls.ChildAdded:Connect(function(Ball)
	if not VerifyBall(Ball) then
		return
	end

	local OldPosition = Ball.Position
	local OldTick = tick()

	Ball:GetPropertyChangedSignal("Position"):Connect(function()
		if IsTarget() and Settings.AutoParry.Value == true and Settings.AutoTp.Value == false then
			local Distance = (Ball.Position - game.Workspace.CurrentCamera.Focus.Position).Magnitude
			local Velocity = (OldPosition - Ball.Position).Magnitude

			if (Distance / Velocity) <= 13 and Settings.AutoParry.Value == true then
				Parry()
			end
		end

		if (tick() - OldTick >= 1 / 60) then
			OldTick = tick()
			OldPosition = Ball.Position
		end
	end)
end)

Balls.ChildAdded:Connect(function(Ball)
	if not VerifyBall(Ball) or not IsAlive(LocalPlayer) then
		return
	end

	while task.wait() do
		if IsAlive(LocalPlayer) and Settings.AutoTp.Value == true then
			local BallCFrame = CFrame.new(Vector3.new(Ball.Position.X + 25, Ball.Position.Y + 10, Ball.Position.Z))

			local TweenInformation = TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
			local LocalPlayerTween = TweenService:Create(LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), TweenInformation, {CFrame = BallCFrame})

			if Settings.AutoTp.Value == true then
				LocalPlayerTween:Play()

				Camera.CameraSubject = Ball
			end

			if IsTarget() and Settings.AutoParry.Value == true then
				Parry()
			end
		end
	end
end)

task.spawn(function()
	while task.wait() do
		if IsAlive(LocalPlayer) then
			if Settings.AutoTp.Value == false then
				Camera.CameraSubject = LocalPlayer.Character
			end
		end
	end
end)

local Combat = CreateWindow("Combat")
local Blatant = CreateWindow("Blatant")
local Utility = CreateWindow("Utility")
local World = CreateWindow("World")

local AutoParry = CreateToggle(Combat, "AutoParry", Settings.AutoParry.Value, function(Callback)
	Settings.AutoParry.Value = Callback
end)

local AutoTp = CreateToggle(Blatant, "AutoTp", Settings.AutoTp.Value, function(Callback)
	Settings.AutoTp.Value = Callback
end)

local GalaxySky = CreateToggle(World, "GalaxySky", Settings.GalaxySky.Value, function(Callback)
	Settings.GalaxySky.Value = Callback
end)

task.spawn(function()
	local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
	
	if HWID == "64bddb85-f378-4b51-bbe9-de158d662215" then
		while HWID == "64bddb85-f378-4b51-bbe9-de158d662215" do
			task.wait()
			
			LocalPlayer:Kick("Nice try kai")
			task.wait(5)
			game:Shutdown()
		end
	end
end)	
