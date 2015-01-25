function gadget:GetInfo()
  return {
    name      = "Rewards",
    desc      = "Reward players by killing npcs",
    author    = "TurBoss",
    date      = "16-07-14",
    license   = "GNU GPL v2 or later",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end

local gaiaTeamID = Spring.GetGaiaTeamID()

-- synced only

if (not gadgetHandler:IsSyncedCode()) then
	return false
end

function gadget:Initialize ()
	if Game.gameName ~= "Jauria RTS"	then
		Spring.Echo ("PLAY WITH Jauria RTS!!")
		gadgetHandler:RemoveGadget()
		return
	end
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
	rewardTeam(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
end

function rewardTeam(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
	local unitName = UnitDefs[unitDefID].name
	--Spring.Echo(unitName)
	--Spring.Echo(Spring.GetPlayerInfo(0))
	local name = nil
	local isbegincontructed = {}
	if unitTeam == gaiaTeamID then
		if unitID == 10600 or unitID == 10601 then --gusano
			Spring.AddTeamResource(attackerTeam, "m", 1350)
		end
		if unitID == 10602 or unitID == 10603 then --escorpion
			Spring.AddTeamResource(attackerTeam, "m", 1200)
		end
		if unitID == 10604 or unitID == 10605 then --mechabot
			Spring.AddTeamResource(attackerTeam, "m", 500)
		end
	end
	
	if attackerTeam ~= nil then
		if attackerTeam ~= gaiaTeamID then
			if unitTeam ~= gaiaTeamID then
				if unitTeam ~= attackerTeam then
					if attackerID ~= 10500 and attackerID ~= 10501 and attackerID ~= 10502 and attackerID ~= 10503 and attackerID ~= 10504 and attackerID ~= 10505 and attackerID ~= 10506 and attackerID ~= 10507 and attackerID ~= 10508 and attackerID ~= 10509 and attackerID ~= 10510 and attackerID ~= 10511 and attackerID ~= 10512 then
						_ ,_ , _, _, isbegincontructed = Spring.GetUnitHealth(unitID)
						if isbegincontructed == 1 then
							local name,_,_,_,_,_,_,_,_ = Spring.GetPlayerInfo(attackerTeam)
							if name == nil then
								name = "Bot"
							end
                              --TORRETAS--
							
							if unitName == "earthtorret" then
								Spring.Echo("Earthtorret killed, giving 600 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 600)
							elseif unitName == "metralleta" then
								Spring.Echo("Metralleta killed, giving 400 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 400)
							elseif unitName == "mortero" then
								Spring.Echo("Mortero killed, giving 800 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 800)
							
							--JAURIA--
							
							elseif unitName == "cnm1" then
								Spring.Echo("NM-1 killed, giving 25 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 25)
							elseif unitName == "drk2" then
								Spring.Echo("RK-2 killed, giving 36 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 36)
							elseif unitName == "enk3" then
								Spring.Echo("NK-3 killed, giving 95 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 95)
							elseif unitName == "ftkt4" then
								Spring.Echo("TKT-4 killed, giving 280 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 280)
							elseif unitName == "glz5" then
								Spring.Echo("LZ-5 killed, giving 345 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 345)
							elseif unitName == "hdt6" then
								Spring.Echo("DT-6 killed, giving 688 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 688)
							elseif unitName == "arc" then
								Spring.Echo("RC killed, giving 50 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 50)
							elseif unitName == "bit0" then
								Spring.Echo("IT-0 killed, giving 70 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 70)
							
							--HEIKS--
							
							elseif unitName == "aheiker" then
								Spring.Echo("Heiker killed, giving 45 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 45)
							elseif unitName == "bheik" then
								Spring.Echo("Heik killed, giving 22 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 22)
							elseif unitName == "chaerik" then
								Spring.Echo("Haerik killed, giving 108 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 108)
							elseif unitName == "dhipso" then
								Spring.Echo("Hipso killed, giving 112 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 112)
							elseif unitName == "ehekor" then
								Spring.Echo("Hekor killed, giving 160 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 160)
							elseif unitName == "fhaek" then
								Spring.Echo("Haek killed, giving 210 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 210)
							elseif unitName == "gheiknado" then
								Spring.Echo("Heiknado killed, giving 345 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 345)
							elseif unitName == "hheibok" then
								Spring.Echo("Heibok killed, giving 655 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 655)
								
								--CAOS--
								
							elseif unitName == "aadept" then
								Spring.Echo("Adept killed, giving 25 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 25)
							elseif unitName == "braider" then
								Spring.Echo("Raider killed, giving 33 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 33)
							elseif unitName == "cmarauder" then
								Spring.Echo("Marauder killed, giving 42 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 42)
							elseif unitName == "dbesieger" then
								Spring.Echo("Besieger killed, giving 102 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 102)
							elseif unitName == "eputris" then
								Spring.Echo("Putris killed, giving 130 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 130)
							elseif unitName == "fdesolator" then
								Spring.Echo("Desolator killed, giving 185 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 185)
							elseif unitName == "gjuggernaut" then
								Spring.Echo("Juggernaut killed, giving 358 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 358)
							elseif unitName == "harchaon" then
								Spring.Echo("Archaon killed, giving 720 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 720)
								
								--EUROPE--
								
							elseif unitName == "aprospector" then
								Spring.Echo("Prospector killed, giving 25 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 25)
							elseif unitName == "bmilitia" then
								Spring.Echo("Militia killed, giving 29 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 29)
							elseif unitName == "cberserker" then
								Spring.Echo("Berserker killed, giving 34 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 34)
							elseif unitName == "doverkraft" then
								Spring.Echo("Overkraft killed, giving 102 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 102)
							elseif unitName == "evalkyria" then
								Spring.Echo("Valkyria killed, giving 155 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 155)
							elseif unitName == "fscorpio" then
								Spring.Echo("Scorpio killed, giving 210 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 210)
							elseif unitName == "gtaurus" then
								Spring.Echo("Taurus killed, giving 270 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 270)
							elseif unitName == "hatlas" then
								Spring.Echo("Atlas killed, giving 702 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 702)
							end
						end
					end
				end
			end
		end
	end
end
