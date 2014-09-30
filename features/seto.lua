local objectname= "seto" 
local featureDef	=	{
	name			= "seto",
	world				="All Worlds",
	description				="seto",
	category				="buildings",
	object				="features/airport/seto.dae",
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "8 8 8",
	collisionvolumetype = "Box",
	footprintx				=1,
	footprintz				=1,
	height				=10,
	blocking				=true,
	upright				=true,
	hitdensity				=50,
	energy				=200,

	damage				=2000,
	flammable				=true,
	reclaimable				=false,
	indestructible			=true,
	noselect=false,
	autoreclaimable				=false,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
