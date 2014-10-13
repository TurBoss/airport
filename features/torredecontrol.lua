local objectname= "torredecontrol" 
local featureDef	=	{
	name			= "torredecontrol",
	world				="All Worlds",
	description				="torredecontrol",
	category				="buildings",
	object				="features/airport/torredecontrol.dae",
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "170 760 170",
	collisionvolumetype = "cylY",
	footprintx				=8,
	footprintz				=8,
	height				=600,
	blocking				=true,
	upright				=true,
	hitdensity				=50,
	energy				=0,

	damage				=80000,
	flammable				=true,
	reclaimable				=false,
	indestructible			=false,
	noselect=true,
	autoreclaimable				=false,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
