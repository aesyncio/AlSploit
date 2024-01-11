local AlSploitApi = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/Api"))()

local LocalPlayer = game.Players.LocalPlayer

local Players = game:GetService("Players")

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SwordHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SwordHit")

local InventoryUtil = require(ReplicatedStorage.TS.inventory["inventory-util"]).InventoryUtil
local ItemTable = AlSploitApi.ItemTable

function FindNearestPlayer(MaxDistance)
	local NearestPlayerDistance = MaxDistance or math.huge
	local NearestPlayer

	for i, v in next, Players do
		if IsAlive(v) and v ~= LocalPlayer and IsAlive(LocalPlayer) and v.Team ~= LocalPlayer.Team then
			local Distance = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

			if Distance < NearestPlayerDistance then
				NearestPlayerDistance = Distance
				NearestPlayer = v				
			end
		end
	end

	return NearestPlayer, NearestPlayerDistance
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
	local LocalPlayerHumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
	local EntityHumanoidRootPart = Entity.Character.HumanoidRootPart
	
	local SelfPosition = LocalPlayerHumanoidRootPart.Position + (20 > 14 and (LocalPlayerHumanoidRootPart.Position - EntityHumanoidRootPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EntityHumanoidRootPart.Position).lookVector * ((LocalPlayerHumanoidRootPart.Position - EntityHumanoidRootPart.Position).Magnitude - 14)) or Vector3.zero)

	SwordHitRemote:FireServer({
		weapon = Weapon.tool,
		chargedAttack = {chargeRatio = 0},
		entityInstance = Entity,
		validate = {
			raycast = {
				cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
				cursorDirection = HashFunction(CFrame.new(SelfPosition, EntityHumanoidRootPart.Position).lookVector)
			},
			
			targetPosition = HashFunction(EntityHumanoidRootPart.Position),
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
			local NearestEntity = FindNearestPlayer()
			local Sword = GetSword()

			if NearestEntity and Sword then
				SwordHit(NearestEntity, Sword)
			end	
		end	
	until not game
end)
