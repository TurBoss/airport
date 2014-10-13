local objectname= "murolateral" 
local featureDef	=	{
	name			= "murolateral",
	world				="All Worlds",
	description				="murolateral",
	category				="buildings",
	object				="features/airport/murolateral.dae",
	--collisionvolumeoffsets = "1 1 1",
	--collisionvolumescales = "16 0 16",
	--collisionvolumetype = "Box",
	useFootPrintCollisionVolume	= true,
	footprintx				=1,
	footprintz				=212,
	height				=200,
	blocking				=true,
	upright				=true,
	hitdensity				=50,
	metal				=0,

	damage				=8000,
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
