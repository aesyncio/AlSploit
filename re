local LocalPlayer = game.Players.LocalPlayer

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SwordHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SwordHit")

local InventoryUtil = require(ReplicatedStorage.TS.inventory["inventory-util"]).InventoryUtil
local ItemTable = debug.getupvalue(require(ReplicatedStorage.TS.item["item-MetaGame"]).getItemMetaGame, 1)

local function FindNearestEntity()
	
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

	for i, v in next, GetInventory(LocalPlayer).items do 
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

	local SelfPosition = LocalPlayerPrimaryPart.Position + (CFrame.lookAt(LocalPlayerPrimaryPart.Position, EntityPrimaryPart.Position).lookVector * (LocalPlayerPrimaryPart.Position - EntityPrimaryPart.Position).Magnitude - 14)

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

task.spawn(function()
	repeat
		task.wait()
		
		local NearestEntity = FindNearestEntity()
		local Sword = GetSword()
		
		if NearestEntity and Sword then
			SwordHit()
		end		
	until not game
end)
