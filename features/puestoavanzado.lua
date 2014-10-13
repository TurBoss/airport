local objectname= "puestoavanzado" 
local featureDef	=	{
	name			= "puestoavanzado",
	world				="All Worlds",
	description				="puestoavanzado",
	category				="buildings",
	object				="features/airport/puestoavanzado.dae",
	--collisionvolumeoffsets = "1 1 1",
	--collisionvolumescales = "24 0 24",
	--collisionvolumetype = "Box",
	useFootPrintCollisionVolume	= true,
	footprintx				=4,
	footprintz				=4,
	--height				=200,
	blocking				=false,
	upright				=true,
	hitdensity				=50,
	metal				=0,

	damage				=20000,
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
