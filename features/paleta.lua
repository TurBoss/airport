local objectname= "paleta" 
local featureDef	=	{
	name			= "paleta",
	world				="All Worlds",
	description				="paleta",
	category				="buildings",
	object				="features/airport/paleta.dae",
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "8 8 8",
	collisionvolumetype = "Box",
	footprintx				=6,
	footprintz				=6,
	height				=30,
	blocking				=false,
	upright				=true,
	hitdensity				=50,
	energy				=200,

	damage				=1200,
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
