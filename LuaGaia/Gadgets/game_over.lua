function gadget:GetInfo()
	return {
		name = "Game Over",
		desc = "Declares gameover",
		author = "TurBoss",
		date = "18-7-14",
		license = "GNU GPL, v2 or later",
		layer = 0,
		enabled = true -- loaded by default?
	}
end

local GameOver = Spring.GameOver
local GetTeamUnits = Spring.GetTeamUnits
local DestroyUnit = Spring.DestroyUnit

-- synced only

if (not gadgetHandler:IsSyncedCode()) then
	return false
end

function gadget:GameOver()
	-- remove ourself after successful game over
	gadgetHandler:RemoveGadget()
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeamID, attackerID, attackerDefID, attackerTeam)
	local team = {}
	team[0] = attackerTeam
	if unitID == 1000 or unitID == 1001 then
		Spring.SendLuaUIMsg("gameover" .. team[0])
		GameOver(team)
		destroyall(team[0])
	end
end

function destroyall(team)
	if team == "0" then
		team = 1
	elseif team == "1" then
		team = 0
	end
	toDestroy = GetTeamUnits(team)
	Spring.Echo(toDestroy)
	for u in pairs(toDestroy) do
		DestroyUnit(toDestroy[u], true)
	end
end
