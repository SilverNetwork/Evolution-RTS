unitDef                    = {

	acceleration                 = 1,
	brakeRate                    = 1,
	buildCostEnergy              = 0,
	buildCostMetal               = 27,
	builder                      = false,
	buildTime                    = 5,
	buildpic					 = "eallterrriot.png",
	canAttack                    = true,
	
	--  canDgun			         = true,
	canGuard                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = "1",
	category                     = "LIGHT NOTAIR RIOT",

	-- Cloaking

	cancloak		             = true,
	cloakCost		             = 0,
	cloakCostMoving	             = 1,
	minCloakDistance             = 70,
	decloakOnFire	             = true,
	decloakSpherical             = true,
	initCloaked		             = false,
	
	-- End Cloaking

	description                  = [[Shotgun/Riot Tank • Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "mediumExplosionGenericRed",
	footprintX                   = 4,
	footprintZ                   = 4,
	iconType                     = "riot_lit",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	leaveTracks                  = false,
	maxDamage                    = 400,
	maxSlope                     = 180,
	maxVelocity                  = 4.5,
	maxReverseVelocity           = 1,
	turninplacespeedlimit        = 3.3,
	maxWaterDepth                = 10,
	metalStorage                 = 0,
	movementClass                = "ALLTERRTANK4",
	name                         = humanName,
	noChaseCategory              = "VTOL",
	objectName                   = objectName,
	script	                     = script,
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "mediumExplosionGenericRed",
	sightDistance                = 500,
	smoothAnim                   = true,
	stealth			             = true,
	seismicSignature             = 2,
	transportbyenemy             = false;
	turnInPlace                  = true,
	turnRate                     = 5000,
	unitname                     = unitName,
	upright                      = false,
	workerTime                   = 0,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:gdhcannon",
			"custom:dirtsmall",
			"custom:blacksmoke",
		},
	},
	sounds                       = {
		underattack              = "other/unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	weapons                      = {
		-- [1]                      = {
			-- def                  = "riottankempweapon",
			-- onlyTargetCategory   = "BIO LIGHT ARMORED BUILDING",
			-- badTargetCategory    = "WALL",
		-- },
		[1]                      = {
			def                  = "riottankshotgun",
			onlyTargetCategory   = "BIO LIGHT ARMORED BUILDING",
			badTargetCategory    = "WALL BUILDING",
		},
	},
	customParams                 = {
		isupgraded               = isUpgraded,
		unittype				 = "mobile",
		canbetransported 		 = "true",
		needed_cover             = 2,
		death_sounds             = "generic",
		RequireTech              = tech,
		armortype                = armortype,
		nofriendlyfire	         = "1",
		supply_cost              = supply,
		normaltex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",
		corpse                   = "energycore",
	},
}

weaponDefs                 = {
	riottankempweapon            = {
		
		AreaOfEffect             = 250,
		avoidFeature             = false,
		avoidFriendly            = false,
		collideFeature           = false,
		collideFriendly          = false,
		coreThickness            = 0.6,
		--	cegTag               = "mediumcannonweapon3",
		duration                 = 0.05,
		edgeeffectiveness        = 0.1,
		energypershot            = 0,
		explosionGenerator       = "custom:genericshellexplosion-medium-blue",
		fallOffRate              = 1,
		fireStarter              = 100,
		impulseFactor            = 0,
		
		minintensity             = 1,
		name                     = "Laser",
		noexplode		         = true,
		paralyzer		         = true,
		paralyzetime	         = 2.5,
		range                    = 450,
		reloadtime               = 1,
		WeaponType               = "LaserCannon",
		rgbColor                 = "0 0.2 1",
		rgbColor2                = "1 1 1",
		soundTrigger             = true,
		soundstart               = "weapons/fnubeamfire.wav",
		soundHit                 = "explosions/phasegun1hit.wav",
		texture1                 = "wave",
		texture2                 = "empty",
		thickness                = 40,
		tolerance                = 1000,
		turret                   = true,
		weaponVelocity           = 1000,
		customparams             = {
			isupgraded           = isUpgraded,
			damagetype		     = "eallterrriot", 
			nofriendlyfire	     = 1,
		}, 
		damage                   = {
			default              = 200,
		},
	},

	riottankshotgun              = {
		AreaOfEffect             = 250,
		avoidFriendly            = false,
		avoidFeature             = false,
		collideFriendly          = false,
		collideFeature           = false,
		
		cegTag                   = "bruisercannon",
		explosionGenerator       = "custom:genericshellexplosion-medium",
		energypershot            = 0,
		interceptedByShieldType  = 4,
		impulseFactor            = 0,
		name                     = "Shotgun",
		--projectiles		     = 10,
		range                    = 500,
		reloadtime               = 5,
		weaponType		         = "Cannon",
		soundHit                 = "explosions/mediumcannonhit.wav",
		soundStart               = "weapons/bruisercannon.wav",
		--sprayangle		         = 2000,
		
		turret                   = true,
		weaponVelocity           = 400,
		customparams             = {
			isupgraded			 = isUpgraded,
			damagetype		     = "eriottank2shotgun",  
		},      
		damage                   = {
			default              = 300,
		},
	},
}
