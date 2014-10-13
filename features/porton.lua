local objectname= "porton" 
local featureDef	=	{
	name			= "porton",
	world				="All Worlds",
	description				="porton",
	category				="buildings",
	object				="features/airport/porton.dae",
	--collisionvolumeoffsets = "1 1 1",
	--collisionvolumescales = "24 0 24",
	--collisionvolumetype = "Box",
	useFootPrintCollisionVolume	= true,
	footprintx				=1,
	footprintz				=10,
	--height				=200,
	blocking				=true,
	upright				=true,
	hitdensity				=50,
	metal				=0,

	damage				=35000,
	flammable				=fslse,
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
