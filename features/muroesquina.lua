local objectname= "muroesquina" 
local featureDef	=	{
	name			= "muroesquina",
	world				="All Worlds",
	description				="muroesquina",
	category				="buildings",
	object				="features/airport/muroesquina.dae",
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "8 8 8",
	collisionvolumetype = "Box",
	footprintx				=1,
	footprintz				=1,
	height				=30,
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
