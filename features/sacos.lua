local objectname= "sacos" 
local featureDef	=	{
	name			= "sacos",
	world				="All Worlds",
	description				="sacos",
	category				="buildings",
	object				="features/airport/sacos.dae",
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

	damage				=10000,
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
