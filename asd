local LocalPlayer = game.Players.LocalPlayer

local Camera = game:GetService("Workspace").CurrentCamera

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StatisticsService = game:GetService("Stats")
local UserInputService = game:GetService("UserInputService")
local LightingService = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local LocalPlayer = game.Players.LocalPlayer

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

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local Open = Instance.new("ImageButton")

UIStroke.Parent = Open
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 2
UIStroke.Color = Color3.new(0.635294, 0.313725, 1)

Open.Name = "Open"
Open.Parent = AlSploit
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.963096738, 0, 0.351765305, 0)
Open.Size = UDim2.new(0.0329854637, 0, 0.0837961882, 0)
Open.Image = "rbxassetid://15428841655"

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Open

UIAspectRatioConstraint.Parent = Open
UIAspectRatioConstraint.AspectRatio = 1

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
	UIListLayout.Padding = UDim.new(0, 5)

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
	Toggle.TextSize = 18.000
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

function CreateFlyHud()
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local NumberDisplay = Instance.new("TextLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local DisplayBackground = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Display = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")

	UIStroke.Parent = Main
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Color = Color3.new(0.635294, 0.313725, 1)
	UIStroke.Thickness = 3

	task.spawn(function()
		repeat
			task.wait(0.001)

			UIStroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
		until not game
	end)

	Main.Name = "Main"
	Main.Parent = AlSploit
	Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Main.BackgroundTransparency = 0.600
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.3935, 0, 0.7, 0)
	Main.Size = UDim2.new(0, 230, 0, 60)
	Main.ZIndex = 3

	UICorner.CornerRadius = UDim.new(0, 16)
	UICorner.Parent = Main

	NumberDisplay.Name = "NumberDisplay"
	NumberDisplay.Parent = Main
	NumberDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NumberDisplay.BackgroundTransparency = 1.000
	NumberDisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NumberDisplay.BorderSizePixel = 0
	NumberDisplay.Position = UDim2.new(0.117391303, 0, 0.100000001, 0)
	NumberDisplay.Size = UDim2.new(0.766666651, 0, 0.294117659, 0)
	NumberDisplay.ZIndex = 3
	NumberDisplay.Font = Enum.Font.FredokaOne
	NumberDisplay.Text = "2.5"
	NumberDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
	NumberDisplay.TextSize = 30.000
	NumberDisplay.TextWrapped = true

	UIAspectRatioConstraint.Parent = NumberDisplay
	UIAspectRatioConstraint.AspectRatio = 9.992

	DisplayBackground.Name = "DisplayBackground"
	DisplayBackground.Parent = Main
	DisplayBackground.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	DisplayBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DisplayBackground.BorderSizePixel = 0
	DisplayBackground.Position = UDim2.new(0.173913315, 0, 0.633333325, 0)
	DisplayBackground.Size = UDim2.new(0.651159286, 0, 0.150980309, 0)
	DisplayBackground.ZIndex = 4

	UICorner_2.Parent = DisplayBackground

	Display.Name = "Display"
	Display.Parent = DisplayBackground
	Display.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
	Display.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Display.BorderSizePixel = 0
	Display.Position = UDim2.new(-2.05137255e-07, 0, 0, 0)
	Display.Size = UDim2.new(0, 0, 0, 0)
	Display.ZIndex = 5

	UICorner_3.Parent = Display
	
	return Main, NumberDisplay, Display
end

local Settings = {
	PickupRange = {Value = true},
	ChestStealer = {Value = true},
	InfiniteJump = {Value = true},
	Indicators = {Value = true},
	GalaxySky = {Value = true},
	PlayAgain = {Value = true},
	AimAssist = {Value = false},
	KillAura = {Value = true, Range = 20, CustomAnimation = true, DragonBreath = false},
	Velocity = {Value = true},	
	AntiVoid = {Value = true, Transparency = 0.65},
	Sprint = {Value = true},
	NoFall = {Value = true},
	Strafe = {Value = true},
	Speed = {Value = true, Speed = 23},
	Reach = {Value = true},
	Nuker = {Value = true},
	Cape = {Value = true},
	Esp = {Value = true}
}

local KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local Client = require(ReplicatedStorage.TS.remotes).default.Client
local OrigC0 = ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0

local CollectionServiceBlocks = CollectionService:GetTagged("block")

local KillAuraAnimationCooldown = true
local JumpCooldown = false
local AntiVoidPart = nil

local Animations = {
	["Slow"] = {
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(220), math.rad(100), math.rad(100)),Time = 0.25},
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
	}
}

local function DumpRemote(Tab)
	for i, v in pairs(Tab) do
		if v == "Client" then
			return Tab[i + 1]
		end
	end
	return ""
end

local Bedwars = {
	ClientHandlerStore = require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore,
	SprintController = KnitClient.Controllers.SprintController,
	DamageIndicator = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator,
	KnockbackTable = debug.getupvalue(require(ReplicatedStorage.TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1),
	CombatConstant = require(ReplicatedStorage.TS.combat["combat-constant"]).CombatConstant,
	AttackRemote = DumpRemote(debug.getconstants(KnitClient.Controllers.SwordController.sendServerRequest)),	
	PickupRemote = DumpRemote(debug.getconstants(KnitClient.Controllers.ItemDropController.checkForPickup)),
}

local KillauraRemote = Client:Get(Bedwars.AttackRemote).instance
local BedwarsSwords = require(ReplicatedStorage.TS.games.bedwars["bedwars-swords"]).BedwarsMelees

local RunLoops = {RenderStepTable = {}, StepTable = {}, HeartTable = {}}

do
	function RunLoops:BindToRenderStep(Name, Function)
		if RunLoops.RenderStepTable[Name] == nil then
			RunLoops.RenderStepTable[Name] = RunService.RenderStepped:Connect(Function)
		end
	end

	function RunLoops:UnbindFromRenderStep(Name)
		if RunLoops.RenderStepTable[Name] then
			RunLoops.RenderStepTable[Name]:Disconnect()
			RunLoops.RenderStepTable[Name] = nil
		end
	end

	function RunLoops:BindToStepped(Name,  Function)
		if RunLoops.StepTable[Name] == nil then
			RunLoops.StepTable[Name] = RunService.Stepped:Connect(Function)
		end
	end

	function RunLoops:UnbindFromStepped(Name)
		if RunLoops.StepTable[Name] then
			RunLoops.StepTable[Name]:Disconnect()
			RunLoops.StepTable[Name] = nil
		end
	end

	function RunLoops:BindToHeartbeat(Name, Function)
		if RunLoops.HeartTable[Name] == nil then
			RunLoops.HeartTable[Name] = RunService.Heartbeat:Connect(Function)
		end
	end

	function RunLoops:UnbindFromHeartbeat(Name)
		if RunLoops.HeartTable[Name] then
			RunLoops.HeartTable[Name]:Disconnect()
			RunLoops.HeartTable[Name] = nil
		end
	end
end

function FindNearestPlayer(MaxDistance)
	local NearestDistance = MaxDistance or math.huge
	local NearestPlayer

	for i, v in pairs(game.Players:GetChildren()) do
		if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= LocalPlayer and IsAlive(v) and IsAlive(LocalPlayer) then
			local Distance = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

			if Distance < NearestDistance then
				NearestPlayer = v
				NearestDistance = Distance
			end
		end
	end

	return NearestPlayer, NearestDistance
end

function FindNearestBed()
	local NearestBed = nil
	local MinDistance = math.huge
	for _,v in pairs(game.Workspace:GetDescendants()) do
		if v.Name:lower() == "bed" and v:FindFirstChild("Covers") and v:FindFirstChild("Covers").BrickColor ~= LocalPlayer.Team.TeamColor then
			local Distance = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if Distance < MinDistance then
				NearestBed = v
				MinDistance = Distance
			end
		end
	end
	return NearestBed
end

function GetMatchState()
	return Bedwars["ClientHandlerStore"]:getState().Game.matchState
end

local IsNetworkOwner = isnetworkowner or (gethiddenproperty and function(part)
	if gethiddenproperty(part, "NetworkOwnershipRule") == Enum.NetworkOwnership.Manual then 
		return false
	end
	return true
end) or function() return true end

local function GetInventory(Player)

	if not Player then 
		return {Items = {}, Armor = {}}
	end

	local Success, Return = pcall(function() 
		return require(ReplicatedStorage.TS.inventory["inventory-util"]).InventoryUtil.getInventory(Player)
	end)

	if not Success then 
		return {Items = {}, Armor = {}}
	end
	if Player.Character and Player.Character:FindFirstChild("InventoryFolder") then 
		local InvFolder = Player.Character:FindFirstChild("InventoryFolder").Value
		if not InvFolder then return Return end
		for i, v in next, Return do 
			for i2, v2 in next, v do 
				if typeof(v2) == 'table' and v2.itemType then
					v2.instance = InvFolder:FindFirstChild(v2.itemType)
				end
			end
			if typeof(v) == 'table' and v.itemType then
				v.instance = InvFolder:FindFirstChild(v.itemType)
			end
		end
	end
	return Return
end

function DecimalRound(Number, DigitsPast0)
	DigitsPast0 = math.pow(10, DigitsPast0 or 0)
	
	Number = Number * DigitsPast0
	
	if Number >= 0 then 
		Number = math.floor(Number + 0.5) 
	else 
		Number = math.ceil(Number - 0.5) 
	end
	
	return Number / DigitsPast0
end

function SetCamera(Camera)
	game.Workspace.CurrentCamera.CameraSubject = Camera
end

local function GetSword()
	local Highest, Returning = -9e9, nil

	for i, v in next, GetInventory(LocalPlayer).items do 
		local Power = table.find(BedwarsSwords, v.itemType)
		if not Power then continue end 
		if Power > Highest then 
			Returning = v
			Highest = Power
		end
	end

	return Returning
end

function IsMoving()	
	local Position = LocalPlayer.Character.HumanoidRootPart.Position

	task.wait(0.001)

	if IsAlive(LocalPlayer) and LocalPlayer.Character.HumanoidRootPart.Position ~= Position then
		Position = LocalPlayer.Character.HumanoidRootPart.Position
		return true
	end

	if IsAlive(LocalPlayer) and LocalPlayer.Character.HumanoidRootPart.Position == Position then
		Position = LocalPlayer.Character.HumanoidRootPart.Position
		return false
	end
end

local function GetSpeed()
	local Speed = 0

	if IsAlive(LocalPlayer) then 

		local SpeedDamageBoost =  LocalPlayer.Character:GetAttribute("SpeedBoost")

		if SpeedDamageBoost and SpeedDamageBoost > 1 then 
			Speed = Speed + (22 * (SpeedDamageBoost - 1))
		end

		if LocalPlayer.Character:GetAttribute("SpeedPieBuff") then 
			Speed = Speed + 5
		end

		if LocalPlayer.Character:GetAttribute("GrimReaperChannel") then 
			Speed = Speed + 20
		end

		local Armor = GetInventory().Armor[3]

		if type(Armor) ~= "table" then Armor = {itemType = ""} end

		if Armor.itemType == "Speed_boots" then 
			Speed = Speed + 25
		end

		Speed = Speed + Settings.Speed.Speed	
	end

	return Speed
end

local function HashFunc(Vec)
	return {value = Vec}
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

task.spawn(function()
	local function KillAuraHit()	
		for i, v in pairs(game.Players:GetPlayers()) do
			if IsAlive(v) and Settings.KillAura.Value == true and v.Team ~= LocalPlayer.Team then
				if GetMatchState() ~= 0 and IsAlive(LocalPlayer) then

					local LocalPlayerCharacter = LocalPlayer.Character
					local EnemyCharacter = v.Character

					local LocalPlayerHumanoidRootPart = LocalPlayerCharacter.HumanoidRootPart 
					local EnemyHumanoidRootPart = EnemyCharacter.HumanoidRootPart 

					local Magnitude = (LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude

					if Magnitude <= Settings.KillAura.Range then
						local Sword = GetSword()

						if Sword then

							Magnitude = (LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude

							spawn(function()
								if KillAuraAnimationCooldown then
									KillAuraAnimationCooldown = false

									for i, v in pairs(Animations["Slow"]) do
										TweenService:Create(Camera.Viewmodel.RightHand.RightWrist, TweenInfo.new(v.Time), {C0 = OrigC0 * v.CFrame}):Play()
										task.wait(v.Time - 0.01)
									end

									KillAuraAnimationCooldown = true
								end
							end)		

							local SelfPosition = LocalPlayerHumanoidRootPart.Position + (18 > 14 and (LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EnemyHumanoidRootPart.Position).lookVector * ((LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude - 14)) or Vector3.zero)

							KillauraRemote:FireServer({
								weapon = Sword.tool,
								chargedAttack = {chargeRatio = 0},
								entityInstance = v.Character,
								validate = {
									raycast = {
										cameraPosition = HashFunc(LocalPlayerHumanoidRootPart.Position), 
										cursorDirection = HashFunc(CFrame.new(SelfPosition, EnemyHumanoidRootPart.Position).lookVector)
									},
									targetPosition = HashFunc(EnemyHumanoidRootPart.Position),
									selfPosition = HashFunc(SelfPosition)
								}
							})					
						end
					end
				end
			end
		end
	end

	task.spawn(function()
		repeat
			task.wait()
			task.spawn(KillAuraHit)
		until not game
	end)
end)

task.spawn(function()
	local Cooldown = false	

	repeat
		task.wait(0.5)

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
	until not game
end)

task.spawn(function()
	repeat
		task.wait(0.5)

		if Settings.NoFall.Value == true then
			Client:Get("GroundHit"):SendToServer()
		end
	until not game
end)	

local FlyGroundTime = tick()
local FlyBodyVelocity = Instance.new("BodyVelocity")
local Flying = false

local FlyDown = false
local FlyUp = false

function Fly()
	Flying = not Flying

	if Flying == true and IsAlive(LocalPlayer) then
		
		FlyBodyVelocity = Instance.new("BodyVelocity")
		FlyBodyVelocity.MaxForce = Vector3.new(0, 9e9, 0)
		FlyBodyVelocity.Name = "FlyBodyVelocity"
		FlyBodyVelocity.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")	
		
		local FlyHud, NumberDisplay, SliderDisplay = CreateFlyHud()
		
		task.spawn(function()
			repeat
				task.wait()
				
				local MaxFlyTime = 2.2
				local FlyTime = DecimalRound(tick() - FlyGroundTime, 1)
				
				NumberDisplay.Text = FlyTime		
				
				local TweenInformation = TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)			
				local Tween = TweenService:Create(SliderDisplay, TweenInformation, {Size = UDim2.new(FlyTime / MaxFlyTime, 0, 1, 0)})
				
				Tween:Play()				
			until not Flying or not IsAlive(LocalPlayer)
			
			FlyHud:Destroy()
		end)
		
		task.spawn(function()			
			UserInputService.InputBegan:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space then
					FlyUp = true
				end

				if Input.KeyCode == Enum.KeyCode.LeftShift then
					FlyDown = true
				end			
			end)

			UserInputService.InputEnded:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space then
					FlyUp = false
				end

				if Input.KeyCode == Enum.KeyCode.LeftShift then
					FlyDown = false
				end
			end)			
		end)

		task.spawn(function()
			repeat
				task.wait()
			
				if IsAlive(LocalPlayer) and Flying and (tick() - FlyGroundTime) < 2.2 then					
					FlyBodyVelocity = (Vector3.new(0, (FlyUp and 40 or 0) + (FlyDown and -40 or 0), 0))
				end
				
				if IsAlive(LocalPlayer) and Flying and (tick() - FlyGroundTime) >= 2.2 then
					local FlyTeleportPosition = -99999

					local RaycastParameters = RaycastParams.new()
					
					RaycastParameters.FilterType = Enum.RaycastFilterType.Exclude
					RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

					local Raycast = workspace:Raycast(LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(0, -1000, 0), RaycastParameters)

					if Raycast then 
						FlyTeleportPosition = LocalPlayer.Character.HumanoidRootPart.Position.Y

						local Args = {LocalPlayer.Character.HumanoidRootPart.CFrame:GetComponents()}							
						Args[2] = Raycast.Position.Y + (LocalPlayer.Character.HumanoidRootPart.Size.Y / 2) + LocalPlayer.Character.Humanoid.HipHeight

						LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(unpack(Args))
						table.clear(Args)

						task.wait(0.12)

						if FlyTeleportPosition ~= -99999 and IsAlive(LocalPlayer) then 
							local Args = {LocalPlayer.Character.HumanoidRootPart.CFrame:GetComponents()}
							Args[2] = FlyTeleportPosition

							LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(unpack(Args))
							
							table.clear(Args)
							FlyGroundTime = tick()
						end
					end
				end								
			until not Flying	
			
			FlyBodyVelocity:Destroy()
		end)
	end
end

task.spawn(function()
	UserInputService.InputBegan:Connect(function(Input)
		if Input.KeyCode == Enum.KeyCode.Z then
			Fly()
		end
	end)
end)

local InfFlying = false
local SpoofedCamera = nil
local StartLevel = nil

local InfFlyUp = false
local InfFlyDown = false

local InfFlying = false
local SpoofedCamera = nil
local StartLevel = nil

local InfFlyUp = false
local InfFlyDown = false

function InfFly()
	InfFlying = not InfFlying

	if InfFlying == true and IsAlive(LocalPlayer) then
		task.spawn(function()
			UserInputService.InputBegan:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space and not UserInputService:GetFocusedTextBox() then
					InfFlyUp = true
				end

				if Input.KeyCode == Enum.KeyCode.LeftShift and not UserInputService:GetFocusedTextBox() then
					InfFlyDown = true
				end
			end)

			UserInputService.InputEnded:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space and not UserInputService:GetFocusedTextBox() then
					InfFlyUp = false
				end

				if Input.KeyCode == Enum.KeyCode.LeftShift and not UserInputService:GetFocusedTextBox() then
					InfFlyDown = false
				end
			end)
		end)

		StartLevel = LocalPlayer.Character.Head.Position.Y

		SpoofedCamera = Instance.new("Part")
		SpoofedCamera.Parent = game.Workspace
		SpoofedCamera.Anchored = true
		SpoofedCamera.Transparency = 1
		SpoofedCamera.Position = LocalPlayer.Character.Head.Position

		SetCamera(SpoofedCamera)
		LocalPlayer.Character.PrimaryPart.CFrame += Vector3.new(0, 1000000, 0)
		SpoofedCamera.Position = Vector3.new(SpoofedCamera.Position.X, StartLevel, SpoofedCamera.Position.Z)

		repeat task.wait()
			SpoofedCamera.Position = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, SpoofedCamera.Position.Y + (InfFlyUp and 1 or 0) + (InfFlyDown and -1 or 0), LocalPlayer.Character.PrimaryPart.Position.Z)
			StartLevel = SpoofedCamera.Position.Y	
		until InfFlying == false

		if not InfFlying or not IsAlive(LocalPlayer) then
			game.Workspace.Gravity = 0
			LocalPlayer.Character.PrimaryPart.CFrame = SpoofedCamera.CFrame + Vector3.new(0, 10, 0)		

			SetCamera(LocalPlayer.Character)

			SpoofedCamera:Remove()
			task.wait(0.25)

			game.Workspace.Gravity = 196.2
		end
	end
end

task.spawn(function()
	UserInputService.InputBegan:Connect(function(Input)
		if Input.KeyCode == Enum.KeyCode.X then
			InfFly()
		end
	end)
end)

task.spawn(function()
	RunLoops:BindToHeartbeat("Esp", function()
		task.wait(1)

		for i, v in pairs(game.Players:GetPlayers()) do
			if IsAlive(v) and not v.Character:FindFirstChild("Esp") and v ~= LocalPlayer and Settings.Esp.Value == true then
				local Esp = Instance.new("Highlight")
				
				Esp.Parent = v.Character
				Esp.Name = "Esp"
				Esp.FillColor = Color3.new(0.666667, 0.333333, 1)
				Esp.FillTransparency = 0.5
				Esp.OutlineColor = Color3.new(0.666667, 0, 1)
				Esp.OutlineTransparency = 0

				if v.Team == LocalPlayer.Team and v.Character:FindFirstChild("Esp") then
					Esp:Destroy()
				end
			end
		end

		for i, v in pairs(game.Players:GetPlayers()) do
			if IsAlive(v) and v.Character:FindFirstChild("Esp") and v ~= LocalPlayer and Settings.Esp.Value == false then
				if Settings.Esp.Value == false and v.Character:FindFirstChild("Esp") then
					v:FindFirstChild("Esp"):Destroy()
				end
			end
		end
	end)
end)

task.spawn(function()
	repeat task.wait() until GetMatchState() ~= 0

	local Cooldown = false

	local LowestPosition = 99999
	local OldLowestPosition = math.huge

	local Blockraycast = RaycastParams.new()

	Blockraycast.FilterType = Enum.RaycastFilterType.Include
	Blockraycast.FilterDescendantsInstances = CollectionServiceBlocks

	local function GetLowestPosition()
		for i, v in pairs(CollectionServiceBlocks) do
			local NewRay = game.Workspace:Raycast(v.Position + Vector3.new(0, 800, 0), Vector3.new(0, -1000, 0), Blockraycast)

			if NewRay then
				LowestPosition = NewRay.Position.Y

				if LowestPosition < OldLowestPosition then
					OldLowestPosition = LowestPosition
				end		
			end
		end	
	end

	task.spawn(function()
		local Cooldown = false

		RunLoops:BindToHeartbeat("AntivoidPosition", function()
			if game.Workspace:FindFirstChild("AntiVoidPart") and Cooldown == false then		
				for i, v in pairs(CollectionServiceBlocks) do
					local NewRay = game.Workspace:Raycast(v.Position + Vector3.new(0, 800, 0), Vector3.new(0, -1000, 0), Blockraycast)

					if NewRay then
						LowestPosition = NewRay.Position.Y
						if LowestPosition < OldLowestPosition then
							OldLowestPosition = LowestPosition

							Cooldown = true

							AntiVoidPart.Position = Vector3.new(0, LowestPosition - 4, 0)
						end
					end					
				end
			end
		end)
	end)

	RunLoops:BindToHeartbeat("AntiVoid", function()
		if Settings.AntiVoid.Value == true then
			if not game.Workspace:FindFirstChild("AntiVoidPart") and Cooldown == false then
				Cooldown = true

				AntiVoidPart = Instance.new("Part")
				AntiVoidPart.Parent = game.Workspace
				AntiVoidPart.Material = Enum.Material.Neon
				AntiVoidPart.Name = "AntiVoidPart"
				AntiVoidPart.Size = Vector3.new(5000, 1, 5000)
				AntiVoidPart.Position = Vector3.new(0, LowestPosition - 4, 0)
				AntiVoidPart.Transparency = Settings.AntiVoid.Transparency
				AntiVoidPart.Color = Color3.new(0.666667, 0, 1)
				AntiVoidPart.CanCollide = false
				AntiVoidPart.Anchored = true

				AntiVoidPart.Touched:Connect(function()
					if IsAlive(LocalPlayer) and game.Workspace:FindFirstChild("AntiVoidPart") and LocalPlayer.Character.HumanoidRootPart.Position.Y <= game.Workspace.AntiVoidPart.Position.Y then
						for i = 1, 3 do
							if IsAlive(LocalPlayer) then
								LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(LocalPlayer.Character.HumanoidRootPart.Velocity.X, 100, LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
							end
						end				
					end
				end)
			end
		end

		if Settings.AntiVoid.Value == false then
			if game.Workspace:FindFirstChild("AntiVoidPart") then
				Cooldown = false				
				AntiVoidPart:Destroy()
			end
		end		
	end	)
end)

task.spawn(function()		
	local function GetServerPosition(Position)
		local X = math.round(Position.X / 3)
		local Y = math.round(Position.Y / 3)
		local Z = math.round(Position.Z / 3)
		return Vector3.new(X, Y, Z)
	end

	repeat	
		task.wait(0.1)

		if GetMatchState() ~= 0 and IsAlive(LocalPlayer) and Settings.Nuker.Value == true then
			local Bed = FindNearestBed()

			if Bed then
				local Magnitude = (LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - Bed.Position).Magnitude

				if Bed and Magnitude < 30 then
					local Parameters = RaycastParams.new()
					Parameters.FilterType = Enum.RaycastFilterType.Exclude
					Parameters.FilterDescendantsInstances = {LocalPlayer.Character}
					Parameters.IgnoreWater = true

					local RaycastResult = workspace:Raycast(Bed.Position + Vector3.new(0, 24, 0), Vector3.new(0, -27, 0), Parameters)

					if RaycastResult then
						local TargetBlock = nil

						if RaycastResult.Instance then
							TargetBlock = RaycastResult.Instance
						end

						if not RaycastResult.Instance then
							TargetBlock = Bed
						end

						ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({
							["blockRef"] = {
								["blockPosition"] = GetServerPosition(TargetBlock.Position)
							},
							["hitPosition"] = GetServerPosition(TargetBlock.Position),
							["hitNormal"] = GetServerPosition(TargetBlock.Position)
						})
					end
				end
			end
		end
	until not game
end)

task.spawn(function()
	local function GetQueueType()
		local State = Bedwars.ClientHandlerStore:getState()
		return State.Game.queueType or "bedwars_test"
	end

	task.spawn(function()
		repeat task.wait(1) until GetMatchState() == 2

		if Settings.PlayAgain.Value == true then
			ReplicatedStorage:FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer({["queueType"] = GetQueueType()})
		end
	end)
end)

task.spawn(function()
	RunLoops:BindToHeartbeat("Speed", function(Delta)
		if IsAlive(LocalPlayer) and Settings.Speed.Value == true then			
			local SpeedValue = GetSpeed()

			local RaycastParameters = RaycastParams.new()

			local SpeedCFrame = LocalPlayer.Character.Humanoid.MoveDirection * (SpeedValue - 20) * Delta
			RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

			local Raycast = workspace:Raycast(LocalPlayer.Character.HumanoidRootPart.Position, SpeedCFrame, RaycastParameters)

			if Raycast then
				SpeedCFrame = (Raycast.Position - LocalPlayer.Character.HumanoidRootPart.Position) 
			end

			LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + SpeedCFrame
		end
	end)
end)

task.spawn(function()
	local Cooldown = false
	local DecalId = "rbxassetid://14347677597"
	local Cape = nil

	repeat
		task.wait(0.1)

		if not IsAlive(LocalPlayer) then
			Cooldown = false
		end

		if Settings.Cape.Value == true and Cooldown == false and IsAlive(LocalPlayer) then
			Cooldown = true
			Cape = Instance.new("Part")
			Cape.Parent = LocalPlayer.Character
			Cape.Name = "Cape"
			Cape.Size = Vector3.new(0.2, 0.2, 0.08)
			Cape.Material = Enum.Material.SmoothPlastic
			Cape.Color = Color3.new(0.105882, 0.105882, 0.105882)
			Cape.CanCollide = false

			local BlockMesh = Instance.new("BlockMesh")
			BlockMesh.Parent = Cape
			BlockMesh.Name = "Mesh"
			BlockMesh.Scale = Vector3.new(9, 17.5, 0.5)
			BlockMesh.VertexColor = Vector3.new(1, 1, 1)

			local Motor = Instance.new("Motor")
			Motor.Parent = Cape
			Motor.Name = "Motor"
			Motor.C0 = CFrame.new(0, 2, 0, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
			Motor.C1 = CFrame.new(0, 1, 0.449999988, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
			Motor.Part1 = LocalPlayer.Character.UpperTorso
			Motor.Part0 = Cape
			Motor.CurrentAngle = -0.16208772361278534
			Motor.DesiredAngle = -0.1002269834280014

			task.spawn(function()
				RunService.Heartbeat:Connect(function()
					if IsMoving() then
						local TweenInformation = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
						local CapeTween = TweenService:Create(Motor, TweenInformation, {CurrentAngle = -0.6})

						CapeTween:Play()
					end

					if not IsMoving() then
						local TweenInformation = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
						local CapeTween = TweenService:Create(Motor, TweenInformation, {CurrentAngle = -0.2})

						CapeTween:Play()
					end
				end)
			end)

			local Decal = Instance.new("Decal")
			Decal.Parent = Cape
			Decal.Name = "Decal"
			Decal.Face = Enum.NormalId.Back
			Decal.Texture = DecalId
		end

		if Settings.Cape.Value == false and Cape then
			Cooldown = false
			Cape:Destroy()			
		end
	until not game
end)

task.spawn(function()	
	local Steal = function()
		for i, v in next, (CollectionService:GetTagged("chest")) do
			if (LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 30 then
				local Chest = v:FindFirstChild("ChestFolderValue")
				Chest = Chest and Chest.Value or nil
				local Chestitems = Chest and Chest:GetChildren() or {}

				if #Chestitems > 1 then
					ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer("BlockChest")

					for i3, v3 in next, (Chestitems) do
						if v3:IsA("Accessory") then
							task.spawn(function()
								pcall(function()
									ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/ChestGetItem"):InvokeServer(v.ChestFolderValue.Value, v3)
								end)
							end)
						end
					end

					task.wait(0.001)					
					ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(nil)
				end
			end
		end
	end	

	repeat
		task.wait(0.05)

		if IsAlive(LocalPlayer) and GetMatchState() ~= 0 and Settings.ChestStealer.Value == true then			
			Steal()
		end
	until not game
end)

task.spawn(function()
	local Messages = {"Boom!", "Bam!", "Bop!", "Pow!"}

	debug.setupvalue(Bedwars.DamageIndicator, 10, {
		Create = function(self, obj, ...)
			task.spawn(function()
				if Settings.Indicators.Value == true then
					local Message = Messages[math.random(#Messages)]

					obj.Parent.Text = Message
					obj.Parent.TextColor3 = Color3.fromHSV(tick() % 10 / 10, 2, 2)

					task.spawn(function()
						task.wait(0.75)
						obj.Parent:Destroy()
					end)
				end
			end)
		end
	})
end)

task.spawn(function()
	repeat
		task.wait(0.1)

		if IsAlive(LocalPlayer) and Settings.PickupRange.Value == true then
			local ItemDrops = CollectionService:GetTagged("ItemDrop")
			local PickedUp = {}
			local SoundManager = require(ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out).SoundManager
			local PickUpSound = "rbxassetid://6768578304"

			for i, v in pairs(ItemDrops) do
				if (v:GetAttribute("ClientDropTime") and tick() - v:GetAttribute("ClientDropTime") > 2 or v:GetAttribute("ClientDropTime") == nil) and IsAlive(LocalPlayer) and Settings.PickupRange.Value == true then
					if (LocalPlayer.character.HumanoidRootPart.Position - v.Position).Magnitude <= 30 and (PickedUp[v] == nil or PickedUp[v] <= tick()) then
						task.spawn(function()
							PickedUp[v] = tick() + 0.2
							Client:Get(Bedwars.PickupRemote):CallServerAsync({itemDrop = v}):andThen(function(Success)
								if Success then
									SoundManager:playSound(PickUpSound)
								end
							end)
						end)
					end
				end
			end		
		end
	until not game
end)

task.spawn(function()	
	UserInputService.JumpRequest:Connect(function()
		if IsAlive(LocalPlayer) and Settings.InfiniteJump.Value == true then
			LocalPlayer.Character.Humanoid:ChangeState("Jumping")
		end
	end)
end)

RunLoops:BindToRenderStep("AimAssist", function()
	local NearestPlayer, NearestPlayerDistance = FindNearestPlayer()

	if NearestPlayer and GetMatchState() ~= 0 and NearestPlayerDistance <= 18 and NearestPlayer.Team ~= LocalPlayer.Team and IsAlive(LocalPlayer) and IsAlive(NearestPlayer) and Settings.AimAssist.Value == true then
		Camera.CFrame = Camera.CFrame:lerp(CFrame.new(Camera.CFrame.p, NearestPlayer.Character.HumanoidRootPart.Position), ((1 / 1) + (LocalPlayer and (UserInputService:IsKeyDown(Enum.KeyCode.A) or UserInputService:IsKeyDown(Enum.KeyCode.D)) and 0.01 or 0)))
	end
end)

local CombatWindow = CreateWindow("Combat")
local BlatantWindow = CreateWindow("Blatant")
local UtilityWindow = CreateWindow("Utility")
local WorldWindow = CreateWindow("World")

task.spawn(function()
	local Velocity = CreateToggle(CombatWindow, "Velocity", Settings.Velocity.Value, function(CallBack)
		Settings.Velocity.Value = CallBack

		if CallBack == true then
			Bedwars.KnockbackTable.kbDirectionStrength = 0
			Bedwars.KnockbackTable.kbUpwardStrength = 0	
		end

		if CallBack == false then
			Bedwars.KnockbackTable.kbDirectionStrength = 100
			Bedwars.KnockbackTable.kbUpwardStrength = 100	
		end
	end)
end)

task.spawn(function()
	local KillAura = CreateToggle(CombatWindow, "Killaura", Settings.KillAura.Value, function(CallBack)
		Settings.KillAura.Value = CallBack
	end)
end)

task.spawn(function()
	local Sprint = CreateToggle(CombatWindow, "Sprint", Settings.Sprint.Value, function(CallBack)
		Settings.Sprint.Value = CallBack

		local OldSprintFunction

		if CallBack == true then

			OldSprintFunction = Bedwars.SprintController.stopSprinting

			Bedwars.SprintController.stopSprinting = function(...)
				local OriginalCall = OldSprintFunction(...)

				Bedwars.SprintController:startSprinting()

				return OriginalCall
			end

			task.spawn(function()
				Bedwars.SprintController:startSprinting()
			end)

			LocalPlayer.CharacterAdded:Connect(function(Character)
				Character:WaitForChild("Humanoid", 9e9)
				task.wait(0.5)
				Bedwars.SprintController:stopSprinting()
			end)
		end

		if CallBack == false then
			Bedwars.SprintController.stopSprinting = OldSprintFunction
			Bedwars.SprintController:stopSprinting()
		end

		Bedwars.SprintController:setSpeed(20)
	end)
end)

task.spawn(function()
	local Reach = CreateToggle(CombatWindow, "Reach", Settings.Reach.Value, function(CallBack)
		Settings.Reach.Value = CallBack
		
		local OldReach = Bedwars.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE
		
		if CallBack == true then
			Bedwars.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = 20
		end
		
		if CallBack == false then
			Bedwars.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = OldReach
		end
	end)
end)

task.spawn(function()
	local PickupRange = CreateToggle(BlatantWindow, "PickRange", Settings.PickupRange.Value, function(CallBack)
		Settings.PickupRange.Value = CallBack
	end)
end)

task.spawn(function()
	local NoFall = CreateToggle(BlatantWindow, "NoFall", Settings.NoFall.Value, function(CallBack)
		Settings.NoFall.Value = CallBack
	end)
end)

task.spawn(function()
	local Speed = CreateToggle(BlatantWindow, "Speed", Settings.Speed.Value, function(CallBack)
		Settings.Speed.Value = CallBack
	end)
end)

task.spawn(function()
	local ChestStealer = CreateToggle(UtilityWindow, "ChestSteal", Settings.ChestStealer.Value, function(CallBack)
		Settings.ChestStealer.Value = CallBack
	end)
end)

task.spawn(function()
	local AimAssist = CreateToggle(UtilityWindow, "AimAssist", Settings.AimAssist.Value, function(CallBack)
		Settings.AimAssist.Value = CallBack
	end)
end)

task.spawn(function()
	local PlayAgain = CreateToggle(UtilityWindow, "PlayAgain", Settings.PlayAgain.Value, function(CallBack)
		Settings.PlayAgain.Value = CallBack
	end)
end)

task.spawn(function()
	local InfJump = CreateToggle(UtilityWindow, "InfJump", Settings.InfiniteJump.Value, function(CallBack)
		Settings.InfiniteJump.Value = CallBack
	end)
end)

task.spawn(function()
	local Esp = CreateToggle(UtilityWindow, "Esp", Settings.Esp.Value, function(CallBack)
		Settings.Esp.Value = CallBack
	end)
end)

task.spawn(function()
	local GalaxySky = CreateToggle(WorldWindow, "GalaxySky", Settings.GalaxySky.Value, function(CallBack)
		Settings.GalaxySky.Value = CallBack
	end)
end)


task.spawn(function()
	local Indicators = CreateToggle(WorldWindow, "Indicators", Settings.Indicators.Value, function(CallBack)
		Settings.Indicators.Value = CallBack
	end)
end)

task.spawn(function()
	local AntiVoid = CreateToggle(WorldWindow, "AntiVoid", Settings.AntiVoid.Value, function(CallBack)
		Settings.AntiVoid.Value = CallBack
	end)
end)

task.spawn(function()
	local Nuker = CreateToggle(WorldWindow, "Nuker", Settings.Nuker.Value, function(CallBack)
		Settings.Nuker.Value = CallBack
	end)
end)

task.spawn(function()
	local Cape = CreateToggle(WorldWindow, "Cape", Settings.Cape.Value, function(CallBack)
		Settings.Cape.Value = CallBack
	end)
end)

setfpscap(10000)

task.spawn(function()
	local ViewModel = Camera:FindFirstChild("Viewmodel")
	local C1

	local Depth = {Value = 35} 
	local Horizontal = {Value = 15}
	local Vertical = {Value = 5}

	local RotationZ = {Value = 5}

	LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_DEPTH_OFFSET", -(Depth.Value / 10))
	LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (Horizontal.Value / 10))
	LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_VERTICAL_OFFSET", (Vertical.Value / 10))

	C1 = ViewModel.RightHand.RightWrist.C1

	ViewModel.RightHand.RightWrist.C1 = C1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(RotationZ.Value))
end)
