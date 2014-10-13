function gadget:GetInfo()
  return {
    name      = "NpcSpawner",
    desc      = "Spawn NPC's",
    author    = "TurBoss",
    date      = "16-07-14",
    license   = "GNU GPL v2 or later",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end

mineralID = {}

SpawnTimer = {}
SpawnTimer.__index = SpawnTimer

local gaiaTeamID = Spring.GetGaiaTeamID()

-- synced only

if (not gadgetHandler:IsSyncedCode()) then
	return false
end

------------------------------------------------------------------------
------------------------------------------------------------------------

function SpawnTimer.create(timeToSpawn)
	local tim = {}             -- our new object
	setmetatable(tim,SpawnTimer)  -- make NpcTimer handle lookup
	
	--tim.npc = npc      -- initialize our object
	tim.enabled = false
	tim.spawnTime = timeToSpawn
	tim.startTime = 0
	return tim
end

function SpawnTimer:set_timer()
	--Spring.Echo("Timer " .. self.npc)
	self.startTime, _ = Spring.GetGameFrame() 
	self.enabled = true
end

function SpawnTimer:check()
	return self.enabled
end

function SpawnTimer:update(gameFrame)

	local gameFrame = gameFrame

	if gameFrame - self.startTime >= self.spawnTime and self.enabled then
		self.enabled = false
		return true
	else
		return false
	end
end

------------------------------------------------------------------------
------------------------------------------------------------------------

function gadget:Initialize ()	
	if Game.gameName ~= "Jauria RTS"	then
		Spring.Echo ("PLAY WITH Jauria RTS!!")
		gadgetHandler:RemoveGadget()
		return
	end
	
	timer1 = SpawnTimer.create(8000) --timer dramon
	timer2 = SpawnTimer.create(8000)
	timer3 = SpawnTimer.create(8000)
	timer4 = SpawnTimer.create(8000)
	timer5 = SpawnTimer.create(8000)
	timer6 = SpawnTimer.create(8000)

	
	timerc1 = SpawnTimer.create(9000) --timer cofre
	
end

function gadget:GameStart()
	timerc1:set_timer()
	
	spawnNPC(1)
	spawnNPC(2)
	spawnNPC(3)
	spawnNPC(4)
	spawnNPC(5)
	spawnNPC(6)

	
	spawnTurrets1()
	spawnTurrets2()
	
	--unselectableTurrents()
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
	if unitID == 10600 then
		timer1:set_timer()
	elseif unitID == 10601 then
		timer2:set_timer()
	elseif unitID == 10602 then
		timer3:set_timer()
	elseif unitID == 10603 then
		timer4:set_timer()
	elseif unitID == 10604 then
		timer5:set_timer()
	elseif unitID == 10605 then
		timer6:set_timer()
	end
end

function gadget:GameFrame(n)
	if timer1:update(n) then spawnNPC(1) end
	if timer2:update(n) then spawnNPC(2) end
	if timer3:update(n) then spawnNPC(3) end
	if timer4:update(n) then spawnNPC(4) end
	if timer5:update(n) then spawnNPC(5) end
	if timer6:update(n) then spawnNPC(6) end

	if timerc1:update(n) then spawnFeature(1) end
	
	checkFeatures(1)
end

--checkFeatures

function checkFeatures(i)
	if i == 1 then
		if timerc1:check() ~= true and Spring.ValidFeatureID(mineralID[i]) ~= true then
			timerc1:set_timer()
		end
	end
end

--spawn features

function spawnFeature(i)
	--Spring.Echo("torreloca")
	feature = {
		{name="cofre1",x=2560,z=2560,rot="south",},
		
	}
	
		local yPlacement	= Spring.GetGroundHeight(feature[i].x,feature[i].z)+500
		mineralID[i] = Spring.CreateFeature(feature[i].name, feature[i].x, yPlacement, feature[i].z, feature[i].rot)
		--Spring.Echo(mineralID[i])
end


--spawn npcs

function spawnNPC(i)
	--Spring.Echo("Spawn Npc " .. i)
	npc = {
		{name="gusano",x=2730,z=1567,unitID=10600,rot="west",},
		{name="gusano",x=2448,z=3515,unitID=10601,rot="east",},
		
		{name="escorpion",x=1523,z=3491,unitID=10602,rot="west",},
		{name="escorpion",x=3640,z=1669,unitID=10603,rot="east",},
		
		{name="mechabot",x=4258,z=1672,unitID=10604,rot="east",},
		{name="mechabot",x=848,z=3473,unitID=10605,rot="west",},
		
	}
	Spring.CreateUnit (npc[i].name, npc[i].x, 100, npc[i].z, npc[i].rot, gaiaTeamID, false, true, npc[i].unitID)
	--[[for i=1, #npc do
		Spring.CreateUnit (npc[i].name, npc[i].x, 100, npc[i].z, npc[i].rot, gaiaTeamID, false, true, npc[i].unitID)
	end]]--
end

function spawnTurrets1()
	--Spring.Echo("Spawns Turrents 1")
	npc = {
		{name="earthturret",x=1164,z=1254,unitID=10506,rot="east",},
		{name="earthturret",x=1145,z=3905,unitID=10507,rot="east",},
		{name="mortero",x=1745,z=1799,unitID=10508,rot="east",},
		{name="metralleta",x=443,z=2380,unitID=10509,rot="east",},
		{name="metralleta",x=443,z=2749,unitID=10510,rot="east",},
		{name="metralleta",x=1859,z=2864,unitID=10513,rot="east",},
	}
	for i=1, #npc do
		Spring.CreateUnit (npc[i].name, npc[i].x, 100, npc[i].z, npc[i].rot, 0, false, true, npc[i].unitID)
	end
end

function spawnTurrets2()
	--Spring.Echo("Spawns Turrents 2")
	npc = {
		{name="earthturret",x=3980,z=1254,unitID=10514,rot="west",},
		{name="earthturret",x=3965,z=3865,unitID=10515,rot="west",},
		{name="mortero",x=3459,z=3315,unitID=10519,rot="west",},
		{name="metralleta",x=4672,z=2366,unitID=10511,rot="west",},
		{name="metralleta",x=4672,z=2721,unitID=10512,rot="west",},
		{name="metralleta",x=3300,z=2219,unitID=10516,rot="west",},
		
	}
	for i=1, #npc do
		Spring.CreateUnit (npc[i].name, npc[i].x, 100, npc[i].z, npc[i].rot, 1, false, true, npc[i].unitID)
	end
end
