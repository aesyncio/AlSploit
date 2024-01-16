local LocalPlayer = game.Players.LocalPlayer

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LightingService = game:GetService("Lighting")
local PlayerService = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local WorkSpace = game:GetService("Workspace") or workspace

local AlSploit = Instance.new("ScreenGui")
local ContainerFrame = Instance.new("Frame")
local UIListLayoutContainerFrame = Instance.new("UIListLayout")

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

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local Open = Instance.new("ImageButton")

UIStroke.Parent = Open
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 2
UIStroke.Color = Color3.new(170, 85, 255)

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

function CreateTab(Name)
	local Tab = Instance.new("Frame")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UICorner = Instance.new("UICorner")
	local CornerFix = Instance.new("Frame")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local ModulesContainer = Instance.new("Frame")	
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local UIListLayout = Instance.new("UIListLayout")	
	local Title = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	
	Tab.Name = "Tab"
	Tab.Parent = ContainerFrame
	Tab.BackgroundColor3 = Color3.new(0, 0, 0)
	Tab.BorderColor3 = Color3.new(0, 0, 0)
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0.434123844, 0, 0, 0)
	Tab.Size = UDim2.new(0.131752312, 0, 0.0506670922, 0)
	
	UIAspectRatioConstraint.Parent = Tab
	UIAspectRatioConstraint.AspectRatio = 4.940
	
	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.Parent = Tab
	
	CornerFix.Name = "CornerFix"
	CornerFix.Parent = Tab
	CornerFix.BackgroundColor3 = Color3.new(0, 0, 0)
	CornerFix.BorderColor3 = Color3.new(0, 0, 0)
	CornerFix.BorderSizePixel = 0
	CornerFix.Position = UDim2.new(0, 0, 0.737519681, 0)
	CornerFix.Size = UDim2.new(1, 0, 0.257142872, 0)
	
	UIAspectRatioConstraint_2.Parent = CornerFix
	UIAspectRatioConstraint_2.AspectRatio = 19.212

	ModulesContainer.Name = "ModulesContainer"
	ModulesContainer.Parent = Tab
	ModulesContainer.BackgroundColor3 = Color3.new(255, 255, 255)
	ModulesContainer.BackgroundTransparency = 1.000
	ModulesContainer.BorderColor3 = Color3.new(0, 0, 0)
	ModulesContainer.BorderSizePixel = 0
	ModulesContainer.Position = UDim2.new(0, 0, 1, 0)
	ModulesContainer.Size = UDim2.new(1, 0, 21.4285717, 0)
	
	UIAspectRatioConstraint_3.Parent = ModulesContainer
	UIAspectRatioConstraint_3.AspectRatio = 0.231
	
	UIListLayout.Parent = ModulesContainer
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
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
	Title.TextSize = 22.000
	Title.TextWrapped = true
	
	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(170, 85, 255)), ColorSequenceKeypoint.new(1.00, Color3.new(215, 175, 255))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Title
end

local Camera = game:GetService("Workspace").CurrentCamera
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
	NoPlacementCps = {Value = true},
	ChestStealer = {Value = true},
	InfiniteJump = {Value = true},
	DamageBoost = {Value = true},
	ChatSpammer = {Value = false, Speed = 50},
	AcDisabler = {Value = true},
	FpsBooster = {Value = false},
	Indicators = {Value = true},
	AutoToxic = {Value = false},
	GalaxySky = {Value = true},
	PlayAgain = {Value = true},
	Invisible = {Value = false},
	AimAssist = {Value = true},
	Scaffold = {Value = false},
	KillAura = {Value = true, Range = 20, CustomAnimation = true, ToolCheck = false},
	Velocity = {Value = true},	
	AntiVoid = {Value = true, Transparency = 0.65},
	AutoBank = {Value = true},
	HighJump = {Value = false},
	PlayerTp = {Value = true},
	AutoKit = {Value = true},
	AutoBuy = {Value = true},
	Sprint = {Value = true},
	NoFall = {Value = true},
	Aimbot = {Value = true, ToolCheck = false},
	Speed = {Value = true, Speed = 23},
	Reach = {Value = true},
	Nuker = {Value = true, Range = 30, BreakOres = true},
	BedTp = {Value = true},
	Cape = {Value = true},
	Esp = {Value = true},
	Fov = {Value = false, Fov = 100}
}

function FindNearestEntity(MaxDistance)
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

		if IsAlive(LocalPlayer) and Settings.AimAssist.Value == true then
			local LookVector = (NearestEntity.PrimaryPart.Position - Camera.CFrame.Position).unit

			Camera.CFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + LookVector)
		end
	end
end)

local CombatTab = CreateTab("Combat")
