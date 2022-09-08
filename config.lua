Config = {
	Debug 		 = false,
	CarSellSpots = {
		['Downtown Sales'] = {
			minZ       = 25, 
			maxZ       = 35,
			PolyZone   = {
			  vector2(-27.622316360474, -1684.8760986328),
			  vector2(-13.088926315308, -1680.3322753906),
			  vector2(-22.676677703857, -1671.7292480469),
			  vector2(-29.661808013916, -1670.5402832031),
			  vector2(-35.537216186523, -1677.5424804688)
			}, 
			Percentage = 0.5, 
			--AuthorizedIDs = false,
			AuthorizedIDs = {
				['YVM29087'] = true
			}, 
		}
	},

    BlacklistedModels = {
        ['gxr35'] = true,
        ['benito2020'] = true,
        ['911tp'] = true,
        ['demon'] = true,
        ['kidscar'] = true,
        ['niko370z'] = true,
        ['infernus2'] = true,
        ['tesroad20'] = true,
        ['savanna'] = true,
        ['ratrod'] = true,
        ['tunak'] = true,
        ['futostar'] = true,
        ['ellie6str'] = true,
        ['ladybirdstar'] = true,
        ['ruiner6str'] = true,
        ['schwarzer2'] = true,
        ['sent6str'] = true,
        ['tempesta2'] = true,
        ['yosemite6str'] = true,
        ['zr3806str'] = true,
        ['sentinelc'] = true,
        ['gauntletstar'] = true,
        ['tampastar2'] = true,
        ['tampastar'] = true,
        ['cometrwt'] = true,
        ['t66avenger'] = true,
        ['s156str'] = true,
        ['bansheeas'] = true,
        ['300zw'] = true,
        ['c8'] = true,
        ['211le'] = true,
        ['indiancdh'] = true,
        ['roxanne'] = true,
        ['elegyrh7'] = true,
        ['monroec'] = true,
        ['italigton'] = true,
        ['veto'] = true,
    }
	
}


QBCore = exports['qb-core']:GetCoreObject()
