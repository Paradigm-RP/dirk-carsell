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
}


QBCore = exports['qb-core']:GetCoreObject()