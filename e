local LocalPlayer = game.Players.LocalPlayer

local PlayerService = game:GetService("Players")

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local Client = require(ReplicatedStorage.TS.remotes).default.Client

function GetRemote(Remote)
	for i, v in next, (Remote) do
		if v == "Client" then
			return Remote[i + 1]
		end
	end

	return ""
end

local HannahPromptTriggerRemote = Client:Get("HannahPromptTrigger")
local SetObservedChestRemote = ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest")
local ResetCharacterRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ResetCharacter")
local ChestGiveItemRemote = ReplicatedStorage.rbxts_include.node_modules["@rbxts"].net.out._NetManaged["Inventory/ChestGiveItem"]
local ChestGetItemRemote = ReplicatedStorage.rbxts_include.node_modules["@rbxts"].net.out._NetManaged["Inventory/ChestGetItem"]
local BlockPlacingRemote = game:GetService("ReplicatedStorage").rbxts_include.node_modules["@easy-games"]["block-engine"].node_modules["@rbxts"].net.out._NetManaged.PlaceBlock
local ClientHandlerStore = require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
local SendMessageRemote = ReplicatedStorage.DefaultChatSystemChatEvents:WaitForChild("SayMessageRequest")
local ProjectileRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ProjectileFire")
local PlayAgainRemote = ReplicatedStorage:FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events")
local EquipItemRemote = GetRemote(debug.getconstants(debug.getproto(require(ReplicatedStorage.TS.entity.entities["inventory-entity"]).InventoryEntity.equipItem, 3)))
local GroundHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("GroundHit")
local DamageIndicator = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator
local SwordController = KnitClient.Controllers.SwordController
local ProjectileMeta = require(ReplicatedStorage.TS.projectile["projectile-meta"]).ProjectileMeta
local SwordHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SwordHit")
local CombatConstant = require(ReplicatedStorage.TS.combat["combat-constant"]).CombatConstant
local TreeOrbRemote = nil
local PlacementCPS = require(game.ReplicatedStorage.TS["shared-constants"]).CpsConstants
local MinerRemote = nil

function GetMatchState()
	return ClientHandlerStore:getState().Game.matchState
end

if GetMatchState() ~= 0 then
	local TreeOrbRemote = Client:Get(GetRemote(debug.getconstants(debug.getproto(debug.getproto(KnitClient.Controllers.BigmanController.KnitStart, 1), 2))))
	local MinerRemote = Client:Get(GetRemote(debug.getconstants(debug.getproto(KnitClient.Controllers.MinerController.onKitEnabled, 1))))
end

local KnockBackTable = debug.getupvalue(require(ReplicatedStorage.TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)
local ItemTable = debug.getupvalue(require(ReplicatedStorage.TS.item["item-meta"]).getItemMeta, 1)

local ZephyrController = KnitClient.Controllers.WindWalkerController
local SprintController = KnitClient.Controllers.SprintController
local FovController = KnitClient.Controllers.FovController

local InventoryUtil = require(ReplicatedStorage.TS.inventory["inventory-util"]).InventoryUtil
local ItemTable = debug.getupvalue(require(ReplicatedStorage.TS.item["item-meta"]).getItemMeta, 1)

local CollectionServiceDiamondGuardian = CollectionService:GetTagged("DiamondGuardian")
local CollectionServiceGolemBoss = CollectionService:GetTagged("GolemBoss")
local CollectionServiceMonster = CollectionService:GetTagged("Monster")

function FindNearestEntity(MaxDistance)
	local NearestEntityDistance = MaxDistance or math.huge
	local NearestEntity
	local IsNotAPlayer = false
	
	task.spawn(function()
		for i, v in next, CollectionServiceDiamondGuardian do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= 18 then
					NearestEntityDistance = Distance
					NearestEntity = v
					IsNotAPlayer = true
				end
			end
		end
	end)
	
	task.spawn(function()
		for i, v in next, CollectionServiceGolemBoss do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart .Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= 18 then
					NearestEntityDistance = Distance
					NearestEntity = v
					IsNotAPlayer = true
				end
			end
		end
	end)	
	
	task.spawn(function()
		for i, v in next, CollectionServiceMonster do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart .Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= 18 then
					NearestEntityDistance = Distance
					NearestEntity = v
					IsNotAPlayer = true
				end
			end
		end
	end)
	
	task.spawn(function()
		for i, v in next, PlayerService:GetPlayers() do
			if IsAlive(v) and v.Team ~= LocalPlayer.Team then
				local Distance = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= 18 then
					NearestEntityDistance = Distance
					NearestEntity= v
					IsNotAPlayer = false
				end
			end
		end
	end)

	return (IsNotAPlayer and NearestEntity or NearestEntity.Character), NearestEntityDistance
end

local function HashFunction(Value)
	return {value = Value}
end

local function GetInventory(Player)
	local Player = Player or LocalPlayer
	
	local Inventory = InventoryUtil.getInventory(Player).items
	
	return Inventory
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

local function SwordHit(Entity, Weapon)
	local LocalPlayerPrimaryPart = LocalPlayer.Character.PrimaryPart
	local EntityPrimaryPart = Entity.PrimaryPart
	
	local SelfPosition = LocalPlayerPrimaryPart.Position + (20 > 14 and (LocalPlayerPrimaryPart.Position - EntityPrimaryPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerPrimaryPart.Position, EntityPrimaryPart.Position).lookVector * ((LocalPlayerPrimaryPart.Position - EntityPrimaryPart.Position).Magnitude - 14)) or Vector3.zero)
	
	SwordHitRemote:FireServer({
		weapon = Weapon.tool,
		chargedAttack = {chargeRatio = 0},
		entityInstance = Entity,
		validate = {
			raycast = {
				cameraPosition = HashFunction(LocalPlayerPrimaryPart.Position), 
				cursorDirection = HashFunction(CFrame.new(SelfPosition, EntityPrimaryPart.Position).lookVector)
			},
			targetPosition = HashFunction(EntityPrimaryPart.Position),
			selfPosition = HashFunction(SelfPosition)
		}
	})
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
	repeat
		task.wait()
		
		if IsAlive(LocalPlayer) then
			local NearestEntity = FindNearestEntity()
			local Sword = GetSword()
			
			if NearestEntity and Sword then
				SwordHit(NearestEntity, Sword)
			end	
		end	
	until not game
end)
