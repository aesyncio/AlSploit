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

local Settings = {
	ViewModelChanger = {Value = true},
	InfiniteJump = {Value = true},
	AcDisabler = {Value = true},
	GalaxySky = {Value = true},
	LootSaver = {Value = true},
	AutoForge = {Value = true, Scythe = true},
	KillAura = {Value = true, Range = 20, CustomAnimation = true, DragonBreath = false},
	Velocity = {Value = true},	
	AntiVoid = {Value = true, Transparency = 0.65},
	Sprint = {Value = true},
	NoFall = {Value = true},
	Strafe = {Value = true},
	Speed = {Value = true, Speed = 23},
	Reach = {Value = true},
	Nuker = {Value = true},
	Esp = {Value = true}
}

local KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local Client = require(ReplicatedStorage.TS.remotes).default.Client
local OrigC0 = ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0

local CollectionServiceBlocks = CollectionService:GetTagged("block")

local KillAuraAnimationCooldown = true
local ScytheSlowdown = false
local JumpCooldown = false
local AntiVoidPart = nil
local KillauraAc = false
local AcDisabled = false

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
	KnockbackTable = debug.getupvalue(require(ReplicatedStorage.TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1),
	CombatConstant = require(ReplicatedStorage.TS.combat["combat-constant"]).CombatConstant,
	AttackRemote = DumpRemote(debug.getconstants(KnitClient.Controllers.SwordController.sendServerRequest)),	
}

local ScytheSpinRemote = Client:Get("ScytheSpin").instance
local KillauraRemote = Client:Get(Bedwars.AttackRemote).instance
local BedwarsSwords = require(ReplicatedStorage.TS.games.bedwars["bedwars-swords"]).BedwarsMelees

function FindNearestPlayer()
	local NearestDistance = math.huge
	local NearestPlayer

	for i, v in pairs(game.Players:GetChildren()) do
		if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v ~= LocalPlayer and IsAlive(v) then
			local Distance = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

			if Distance < NearestDistance then
				NearestPlayer = v
				NearestDistance = Distance
			end
		end
	end

	return NearestPlayer, NearestDistance
end

function CollectEnderChestItems()
	local EnderChest = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name .. "_personal")

	for i, v in pairs(EnderChest:GetChildren()) do
		if v:IsA("Accessory") and (v.Name == "emerald" or v.Name == "iron" or v.Name == "diamond" or v.Name == "apple" or v.Name == "balloon") then
			Client:GetNamespace("Inventory"):Get("ChestGetItem"):CallServer(EnderChest, v)
		end
	end
end

function SecureEnderChestItems()
	local EnderChest = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name)

	for i, v in pairs(EnderChest:GetChildren()) do
		if (v.Name == "emerald" or v.Name == "iron" or v.Name == "diamond" or v.Name == "gold") then
			Client:GetNamespace("Inventory"):Get("ChestGiveItem"):CallServer(ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name .. "_personal"), v)
		end
	end
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

function GetScythe()
	for i, v in pairs(game.Workspace:FindFirstChild("Camera"):FindFirstChild("Viewmodel"):GetChildren()) do
		if v:IsA("Accessory") and v.Name:find("scythe") then
			return true
		end
	end
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

		if AcDisabled then		
			Speed = Speed + 55
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
			if IsAlive(v) and v.Team ~= LocalPlayer.Team then
				if GetMatchState() ~= 0 and IsAlive(LocalPlayer) then

					local LocalPlayerCharacter = LocalPlayer.Character
					local EnemyCharacter = v.Character

					local LocalPlayerHumanoidRootPart = LocalPlayerCharacter.HumanoidRootPart 
					local EnemyHumanoidRootPart = EnemyCharacter.HumanoidRootPart 

					local Magnitude = (LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude
					
					task.spawn(function()						
						if Magnitude <= 18 and AntiVoidPart and v.Character.HumanoidRootPart.Position.Y > AntiVoidPart.Position.Y + 6 then
							local NearestPlayer, NearestPlayerDistance = FindNearestPlayer()

							if NearestPlayer and Settings.Strafe.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 and LocalPlayer.Character:GetAttribute("Health") >= 40 and IsNetworkOwner(LocalPlayer.Character.HumanoidRootPart) then
								local Magnitude = (LocalPlayer.Character.HumanoidRootPart.Position - NearestPlayer.Character.HumanoidRootPart.Position).Magnitude

								if Magnitude < 18 then
									local TweenInformation = TweenInfo.new(NearestPlayerDistance / (AcDisabled and 40 or 21), Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
									local PlayerTween = TweenService:Create(LocalPlayer.Character.HumanoidRootPart, TweenInformation, {CFrame = NearestPlayer.Character.HumanoidRootPart.CFrame})

									PlayerTween:Play()

									if JumpCooldown == false then
										JumpCooldown = true
										LocalPlayer.Character.Humanoid:ChangeState("Jumping")

										task.spawn(function()
											task.wait(0.75) 
											JumpCooldown = false
										end)
									end
								end
							end
						end
					end)

					if Magnitude > 18 then
						KillauraAc = false
					end

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
							
							if Settings.KillAura.Multiaura == true then
								ScytheSpinRemote:FireServer({position = SelfPosition})
							end
							
							if Settings.Reach.Value == true then
								Bedwars.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = math.floor((LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude * 100) / 100
							end
												
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

							KillauraAc = true						
							AcDisabled = false
						end
					end
				end
			end
		end
	end

	task.spawn(function()
		while task.wait() do
			task.spawn(KillAuraHit)
		end
	end)
end)

task.spawn(function()
	local Cooldown = false	
	
	while task.wait(0.5) do
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

task.spawn(function()
	while task.wait() do
		if Settings.Sprint.Value == true then
			Bedwars.SprintController:startSprinting()
		end
		
		if Settings.NoFall.Value == true then
			Client:Get("GroundHit"):SendToServer()
		end
		
		if Settings.Velocity.Value == true then
			Bedwars.KnockbackTable.kbDirectionStrength = 0
			Bedwars.KnockbackTable.kbUpwardStrength = 0
		end
		
		if LocalPlayer.Character.Humanoid.Health < 30 then
			SecureEnderChestItems()
		end

		if LocalPlayer.Character.Humanoid.Health >= 30 and IsNetworkOwner(LocalPlayer.Character.HumanoidRootPart) then
			CollectEnderChestItems()
		end

		if not IsNetworkOwner(LocalPlayer.Character.HumanoidRootPart) then
			SecureEnderChestItems()
		end
	end
end)	

task.spawn(function()
	while task.wait() do
		
		if KillauraAc or not GetScythe() or Settings.AcDisabler.Value == true then
			AcDisabled = false
		end
		
		if IsAlive(LocalPlayer) and Settings.AcDisabler.Value == true and not KillauraAc and GetScythe() then
		
			ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ScytheDash:FireServer({
				direction = LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10000
			})

			if GetScythe() then
				AcDisabled = true
			end
		end
	end
end)

task.spawn(function()
	while task.wait(1) do
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
	end
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

		while task.wait(5) do			
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
		end
	end)

	while task.wait() do

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
	end	
end)

task.spawn(function()		
	local function GetServerPosition(Position)
		local X = math.round(Position.X / 3)
		local Y = math.round(Position.Y / 3)
		local Z = math.round(Position.Z / 3)
		return Vector3.new(X, Y, Z)
	end

	while task.wait() do
		if GetMatchState() ~= 0 and IsAlive(LocalPlayer) and Settings.Nuker.Value == true then
			local Bed = FindNearestBed()

			if Bed then
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
end)

task.spawn(function()
	local function GetQueueType()
		local State = Bedwars.ClientHandlerStore:getState()
		return State.Game.queueType or "bedwars_test"
	end

	task.spawn(function()
		repeat task.wait(1) until GetMatchState() == 2

		ReplicatedStorage:FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer({["queueType"] = GetQueueType()})
	end)
end)

task.spawn(function()
	RunService.Heartbeat:Connect(function(Delta)
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
	UserInputService.JumpRequest:Connect(function()
		if IsAlive(LocalPlayer) and Settings.InfiniteJump.Value == true then
			LocalPlayer.Character.Humanoid:ChangeState("Jumping")
		end
	end)
end)
task.spawn(function()
	while task.wait(0.5) do
		if Settings.AutoForge.Value == true and GetMatchState() ~= 0 then
			if Settings.AutoForge.Scythe == true and Settings.AutoForge.Value == true then
				game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ForgePurchaseUpgrade:FireServer(2)
			end
		end
	end
end)

local CombatWindow = CreateWindow("Combat")
local BlatantWindow = CreateWindow("Blatant")
local UtilityWindow = CreateWindow("Utility")
local WorldWindow = CreateWindow("World")

task.spawn(function()
	local KillAura = CreateToggle(CombatWindow, "Killaura", Settings.KillAura.Value, function(CallBack)
		Settings.KillAura.Value = CallBack
	end)
end)

task.spawn(function()
	local Sprint = CreateToggle(CombatWindow, "Sprint", Settings.Sprint.Value, function(CallBack)
		Settings.Sprint.Value = CallBack
	end)
end)

task.spawn(function()
	local AcDisabler = CreateToggle(BlatantWindow, "AcDisabler", Settings.AcDisabler.Value, function(CallBack)
		Settings.AcDisabler.Value = CallBack
	end)
end)

task.spawn(function()
	local LootSaver = CreateToggle(BlatantWindow, "LootSaver", Settings.LootSaver.Value, function(CallBack)
		Settings.LootSaver.Value = CallBack
	end)
end)

task.spawn(function()
	local Velocity = CreateToggle(BlatantWindow, "Velocity", Settings.Velocity.Value, function(CallBack)
		Settings.Velocity.Value = CallBack
	end)
end)

task.spawn(function()
	local Strafe = CreateToggle(BlatantWindow, "Strafe", Settings.Strafe.Value, function(CallBack)
		Settings.Strafe.Value = CallBack
	end)
end)

task.spawn(function()
	local Speed = CreateToggle(BlatantWindow, "Speed", Settings.Speed.Value, function(CallBack)
		Settings.Speed.Value = CallBack
	end)
end)


task.spawn(function()
	local AutoForge = CreateToggle(UtilityWindow, "AutoForge", Settings.AutoForge.Value, function(CallBack)
		Settings.AutoForge.Value = CallBack
	end)
end)

task.spawn(function()
	local InfJump = CreateToggle(UtilityWindow, "InfJump", Settings.InfiniteJump.Value, function(CallBack)
		Settings.InfiniteJump.Value = CallBack
	end)
end)

task.spawn(function()
	local NoFall = CreateToggle(BlatantWindow, "NoFall", Settings.NoFall.Value, function(CallBack)
		Settings.NoFall.Value = CallBack
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
	local AntiVoid = CreateToggle(WorldWindow, "ViewChanger", Settings.ViewModelChanger.Value, function(CallBack)
		Settings.ViewModelChanger.Value = CallBack
		
		if CallBack == true then
			if Settings.ViewModelChanger.Value == true then
				local Depth = {Value = 35} 
				local Horizontal = {Value = 10}
				local Vertical = {Value = 5}

				local RotationZ = {Value = 5}

				local ViewModel = Camera:FindFirstChild("Viewmodel")

				LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_DEPTH_OFFSET", -(Depth.Value / 10))
				LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (Horizontal.Value / 10))
				LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_VERTICAL_OFFSET", (Vertical.Value / 10))

				local C1 = ViewModel.RightHand.RightWrist.C1

				ViewModel.RightHand.RightWrist.C1 = C1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(RotationZ.Value))
			end
			
			if Settings.ViewModelChanger.Value == false then
				LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_DEPTH_OFFSET", 0)
				LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", 0)
				LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_VERTICAL_OFFSET", 0)
			end
		end
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
