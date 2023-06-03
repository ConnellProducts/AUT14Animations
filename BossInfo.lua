local standValues = require(game.ServerScriptService["Server Modules"].StandValues)
local StandsConverter = require(game.ReplicatedStorage.ReplicatedModules.Stands)
local DialoguesModule = require(game.ServerScriptService.Mechanics.Interactions.Dialogues)
local SkinHandler = require(game.ServerScriptService["Server Modules"].SkinHandler)
local XenoFunctions = require(game.ReplicatedStorage.ReplicatedModules.XenoFunctions)
local InventoryManager = require(game.ReplicatedStorage.ReplicatedModules.InventoryManager)

local OutputEvent = game.ReplicatedStorage.Remotes.Output
local repStorage = game.ReplicatedStorage

local PathShortcuts = require(game.ServerScriptService.ServerLibrary.PathShortcuts)
local Knit = require(PathShortcuts.KnitPath.Knit)
local Item = require(PathShortcuts.ServerLibrary.Item)
local QuestLineService = Knit.GetService("QuestLineService")
local ContainerService = Knit.GetService("ContainerService")

local CS = game:GetService("CollectionService")

local function multiply(howmuch)

	-- for each players gets howmuch health
	local a = (#game.Players:GetPlayers()) * howmuch
	return a
end


local module = {
	["Default"] = {
		short = {
			Barrage = "E";
			Combo = "LMB";
		};
		movement = {
			Sprint = "Z";
			Dash = "C";
		};
	};
	["Dio"] = {
		--debug = true;
		raycastSpawn = true;
		StandRequired = true;
		stand = 4;
		health = 1500;
		extraHealth = 50;
		damageLimit = 100;
		deathSound = 7235885438;
		animations = {
			["summon"] = 13633491443;
			["death"] = 13633492925;
		};
		ranges = {
			long = 50;
			mid = 15;
			minimum = 8;
			detection = 100;
			maximum = 100;
		};
		moves = {
			short = {
				["Donut"] = "R";
				["Barrage"] = "E";
				["Timestop"] = "F";
				["BloodSuck"] = "B";
				["Teleport"] = "V";
				["RoadRoller"] = "Y";
				["LMB Combo"] = "LMB";
			};
			mid = {
				["Checkmate"] = "T";
				["Teleport"] = "V";
				["Timestop"] = "F";
			};
			long = {
				["Checkmate"] = "T";
				["Teleport"] = "V";
				["Timestop"] = "F";
			};
			shortstandoff = {
				["Stop Sign"] = "Y";
			};
			shortbreak = {
				["DebrisSlam"] = "G";
			};
			defense = {
				["Block"] = "X";
				["Dash"] = "C";
			};
		};
		reward = function(damageDealers)
			local rankRequired = {
				["Daily Quest"] = 100;
				["Ascension To Infinity"] = 3;
				["Creation Of The Cosmos"] = 3;
				["Secrets Of Dawn"] = 1;
				["The same type of stand..."] = 1;
				["The Cursed Time-Manipulators"] = 1;
				["Road To Strongest"] = 1;
				["Nocturnus Quest"] = 1;
				["CMoon Quest"] = 1;
				["MIH Quest"] = 1;
				["The World: Over Heaven Quest"] = 1;
			}
			for rank, data in ipairs(damageDealers) do
				local name, dmg = unpack(data)
				local isPlr = game.Players:FindFirstChild(name)

				if isPlr and dmg >= 10 then
					local AbilityValue = isPlr.Data.Ability.Value

					QuestLineService.AddTaskValue(isPlr, "Defeat [Dio]", 1)

					local format = "Defeat [Dio] [%s]"
					QuestLineService.AddTaskValue(isPlr, string.format(format, StandsConverter[AbilityValue]), 1)
					--isPlr.Data.EventCurrency.Value += 30
				end
			end
		end;
	};
	["Umbra"] = {
		--debug = true;
		StandRequired = true;
		stand = 46;
		health = 1500;
		extraHealth = 0;--100;
		damageLimit = 100;
		deathSound = 7235885438;
		walkspeed = 35;
		animations = {};
		ranges = {
			long = 50;
			mid = 15;
			minimum = 5;
			detection = 100;
			maximum = 100;
		};
		moves = {
			combos = function(data, range)
				local wait, ran = task.wait, math.random
				local function defense(bool)
					data.WalkBack = bool
					data.defending = bool
				end
				local function lmb(amount)
					for i=1, amount do
						data:Move("LMB")
						wait(.3)
					end
				end
				if not CS:HasTag(data.bossModel, "Summoned") then
					repeat
						data:Move("Q")
						wait(.1)
					until CS:HasTag(data.bossModel, "Summoned")
				end
				local sovereign = CS:HasTag(data.bossModel, "Sovereign")
				local hp = data.humanoid.Health/data.humanoid.MaxHealth
				if hp <= .5 and not sovereign then
					data:Move("H")
					range = data:getRange()
				end
				if range == "short" then
					lmb(4)
					data:Move("LMB")
					wait(.25)
					local nextMove = ran(2) == 2 and "R" or "T"
					data:Move(nextMove)
					wait(.5)
					if nextMove == "T" and ran(2) == 2 then
						data:Move(nextMove)
						data:Move("F")
					else
						data:Move("R")
					end
					defense(true)
					wait(.3)
					data:Move("C")
					data:Move("G")
					wait(.5)
					data:Move("Y")
					data:Move("E")
					defense(nil)
				elseif range == "mid" then
					data:Move("G")
					wait(.5)
					if sovereign then
						data:Move("R")
						data:Move("E")
					end
					data:Move("Y")
					if not sovereign then data:Move("E") end
					data:Move("C")
					data:Move("F")
				elseif range == "long" then
					data:Move("G")
					wait(.5)
					if sovereign then
						data:Move("R")
						data:Move("E")
					end
					if not sovereign then data:Move("E") end
					data:Move("C")
					data:Move("Y")
				end
			end;
			defensecombos = function(data, range)
				local wait, ran = task.wait, math.random
				local function defense(bool)
					data.WalkBack = bool
					data.defending = bool
				end
				local function lmb(amount)
					for i=1, amount do
						data:Move("LMB")
						wait(.3)
					end
				end
				local sovereign = CS:HasTag(data.bossModel, "Sovereign")
				defense(true)
				wait(.3)
				data:Move("V")
				wait(ran(3,5))
				data:Move("V")
				wait(.3)
				data:Move("C")
				defense(nil)
			end;
			short = {
				["LMB Combo"] = "LMB";
				["Umbral Execution"] = "F";
				["Elegant Bladework"] = "T";
			};
			mid = {
				["Umbral Execution"] = "F";
				["Judgement Cut"] = "Y";
			};
			long = {
				["Slashes"] = "E";
				["Judgement Cut"] = "Y";
			};
			defense = {
				["Umbral Dash"] = "C";
				["Foresight"] = "V";
				["Umbral Execution"] = "F";
			};
		};
		reward = function(damageDealers)
			local drops  = {
				["Azakana Mask"]  = 25;
				["Ancient Sword"] = 25;
				["Nothing"] = 50;
			}
			for rank, data in ipairs(damageDealers) do
				local name, dmg = unpack(data)
				local isPlr = game.Players:FindFirstChild(name)
				if isPlr and dmg >= 200 then

					--local drop = XenoFunctions.getRandomItem(drops)
					--local pity = isPlr["Ability Progress"]["Drop Pity"]

					--if pity:GetAttribute("UmbraPity") >= 3 and drop == "Nothing" then
					--	print("Pity activated")
					--	repeat
					--		drop = XenoFunctions.getRandomItem(drops)
					--	until drop ~= "Nothing"
					--end

					--if drop ~= "Nothing" then
					--	pity:SetAttribute("UmbraPity", 1)
					--	local item = game.ServerStorage.Items:FindFirstChild(drop):Clone()
					--	item.Parent = isPlr.Backpack
					--else
					--	pity:SetAttribute("UmbraPity", pity:GetAttribute("UmbraPity") + 1)
					--end

					local item = game.ServerStorage.Items:FindFirstChild("Ancient Sword"):Clone()
					item.Parent = isPlr.Backpack
					local item = game.ServerStorage.Items:FindFirstChild("Azakana Mask"):Clone()
					item.Parent = isPlr.Backpack

					--isPlr.Data.EventCurrency.Value += 30

					QuestLineService.AddTaskValue(isPlr, "Defeat [Umbra]", 1)

				end
			end
		end;
	};
	["Hollow"] = {
		--debug = true;
		--dynamicspawn = true;
		stand = 712;
		health = 1000;
		extraHealth = 0;
		damageLimit = 100;
		deathSound = 7235885438;
		walkspeed = 35;
		animations = {
			["summon"] = 13633501696;
		};
		ranges = {
			long = 50;
			mid = 15;
			minimum = 5;
			detection = 100;
			maximum = 100;
		};
		moves = {
			short = {
				["LMB Combo"] = "LMB";
				["Spin"] = "E";
				["Rift Slash"] = "R";
				["Teleport Smash"] = "T";
				["Summon Skeletons"] = "F";
			};
			mid = {
				["Rift Slash"] = "R";
				["Teleport Smash"] = "T";
				["Summon Skeletons"] = "F";
			};
			long = {
				["Rift Slash"] = "R";
				["Teleport Smash"] = "T";
				["Summon Skeletons"] = "F";
			};
			defense = {
			};
		};
		reward = function(damageDealers)
			local drops  = {
				["SKIN_6_2"] = 1;
				["SKIN_6_3"] = 1;
				["SKIN_69_100"] = 1;
				["SKIN_658_1"] = 1;
				["SKIN_658_2"] = 1;
				["SKIN_9_5"] = 1;
				["Pumpkin"] = 5;
				["Nothing"] = 90;
			}
			for rank, data in ipairs(damageDealers) 	do
				local name, dmg = unpack(data)
				local isPlr = game.Players:FindFirstChild(name)
				local minDMG = 10
				if isPlr and dmg >= minDMG then
					local skin = XenoFunctions.getRandomItem(drops)

					local pity = isPlr["Ability Progress"]["Drop Pity"]
					--if pity:GetAttribute("HollowPity") >= 5 and skin == "Nothing" then
						--print("Pity activated")
						repeat
							skin = XenoFunctions.getRandomItem(drops)
						until skin ~= "Nothing"
					--end

					print(skin)
					if skin:find("SKIN") then
						pity:SetAttribute("HollowPity", 100)
						local InventoryContainer = ContainerService.GetContainer(isPlr, "Inventories")
						local SkinInventory = InventoryContainer:Get("SkinInventory")
						SkinInventory:AddItem(Item.new({
							ItemId = skin;
						}))
						repStorage.Remotes.UIOutput:FireClient(isPlr, "NotifyNewItem", skin)
					elseif skin == "Pumpkin" then
						pity:SetAttribute("HollowPity", 100)
						local pumpkin = game.ServerStorage.Items.Pumpkin:Clone()
						pumpkin.Parent = isPlr.Backpack
					else
						pity:SetAttribute("HollowPity", pity:GetAttribute("HollowPity") + 100)
					end
				end
			end
		end;
	};
}

return module
