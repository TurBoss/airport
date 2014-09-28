local objectname= "cono" 
local featureDef	=	{
	name			= "cono",
	world				="All Worlds",
	description				="cono",
	category				="buildings",
	object				="features/airport/cono.dae",
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "8 8 8",
	collisionvolumetype = "Box",
	footprintx				=6,
	footprintz				=6,
	height				=30,
	blocking				=false,
	upright				=true,
	hitdensity				=50,
	energy				=0,

	damage				=200,
	flammable				=false,
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
