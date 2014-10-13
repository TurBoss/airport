local objectname= "edificioa" 
local featureDef	=	{
	name			= "edificioa",
	world				="All Worlds",
	description				="edificioa",
	category				="buildings",
	object				="features/airport/edificioa.dae",
	--collisionvolumeoffsets = "0 0 0",
	--collisionvolumescales = "8 8 8",
	--collisionvolumetype = "Box",
	useFootPrintCollisionVolume	= true,
	footprintx				=17,
	footprintz				=23,
	height				=60,
	blocking				=true,
	upright				=true,
	hitdensity				=50,
	energy				=0,

	damage				=5000,
	flammable				=false,
	reclaimable				=false,
	indestructible			=true,
	noselect=true,
	autoreclaimable				=false,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
