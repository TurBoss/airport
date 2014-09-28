local objectname= "avion" 
local featureDef	=	{
	name			= "avion",
	world				="All Worlds",
	description				="avion",
	category				="buildings",
	object				="features/airport/avion.dae",
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "8 8 8",
	collisionvolumetype = "Box",
	footprintx				=6,
	footprintz				=6,
	height				=30,
	blocking				=true,
	upright				=true,
	hitdensity				=50,
	energy				=200,

	damage				=2000,
	flammable				=true,
	reclaimable				=false,
	indestructible			=false,
	noselect=false,
	autoreclaimable				=false,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
