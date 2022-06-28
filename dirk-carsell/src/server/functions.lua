RegisterNetEvent("CarSell:Sell", function(site,p)
	local src = source
	local ply = QBCore.Functions.GetPlayer(src)

	local cid = ply.PlayerData.citizenid
	if not Config.CarSellSpots[site].AuthorizedIDs or Config.CarSellSpots[site].AuthorizedIDs[cid] then
		local result = MySQL.query.await('SELECT * from player_vehicles WHERE plate = ?', {p})
		print(json.encode(result, {indent = true}))
		if result[1] and result[1].citizenid == cid then 
			local model = result[1].vehicle
			local sharedVeh = QBCore.Shared.Vehicles[model]
			print(json.encode(sharedVeh, {indent = true}))
			if sharedVeh then 
				if sharedVeh.price then 
					local price = sharedVeh.price * Config.CarSellSpots[site].Percentage
					ply.Functions.AddMoney('cash', price)
					MySQL.query('DELETE FROM player_vehicles WHERE plate = @plate', {['@plate'] = p})
					TriggerClientEvent("CarSell:DeleteCar", src, price)
				end
			end
		else
			TriggerClientEvent("QBCore:Notify", src, "You do not own this vehicle")
		end
	else
		TriggerClientEvent("QBCore:Notify",src, "You are not authorized to use this")
	end

end)