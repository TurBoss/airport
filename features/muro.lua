local objectname= "muro" 
local featureDef	=	{
	name			= "muro",
	world				="All Worlds",
	description				="muro",
	category				="buildings",
	object				="features/airport/muro.dae",
	--collisionvolumeoffsets = "0 0 0",
	--collisionvolumescales = "8 8 8",
	--collisionvolumetype = "Box",
	useFootPrintCollisionVolume	= true,
	footprintx				=2,
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
