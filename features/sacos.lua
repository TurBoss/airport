local objectname= "sacos" 
local featureDef	=	{
	name			= "sacos",
	world				="All Worlds",
	description				="sacos",
	category				="buildings",
	object				="features/airport/sacos.dae",
	--collisionvolumeoffsets = "1 1 1",
	--collisionvolumescales = "16 0 16",
	--collisionvolumetype = "Box",
	useFootPrintCollisionVolume	= true,
	footprintx				=1,
	footprintz				=0.5,
	--height				=200,
	blocking				=true,
	upright				=true,
	hitdensity				=50,
	metal				=0,

	damage				=8000,
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
