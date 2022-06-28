Init = function()
	while not QBCore.Functions.GetPlayerData().job do Wait(500); end 
	local Zones = CreateZones()
	while not Zones do Wait(500); end
	Update()
end

local CreatedZones = {}

CreateZones = function()
	for k,v in pairs(Config.CarSellSpots) do 
		CreatedZones[k] = PolyZone:Create(v.PolyZone, {
	    name=k,
	    minZ=v.minZ,
	    maxZ=v.maxZ,
	    debugGrid=Config.Debug,
	    gridDivisions=25
		})
	end
	return true
end


Citizen.CreateThread(Init)


Update = function()
	while true do 
		local ply = PlayerPedId() 
		local cs = GetEntityCoords(ply)
		local wait_time = 1000
		local veh = GetVehiclePedIsIn(ply)
		if veh ~= 0 then 
			if GetPedInVehicleSeat(veh, -1) == ply then 
				for k,v in pairs(CreatedZones) do
					local isInside = CreatedZones[k]:isPointInside(cs)
					if isInside then 
						wait_time = 0 
						ShowHelpNotification("Press ~INPUT_PICKUP~ to sell this vehicle")
						if IsControlJustPressed(0,38) then 
							local plate = QBCore.Functions.GetPlate(veh)
							if plate ~= nil then 
								TriggerServerEvent("CarSell:Sell", k, plate)
							end
						end
					end
				end
			end
		end
		Wait(wait_time)
	end
end


Notify = function(msg)
	QBCore.Functions.Notify(msg)
end

ShowHelpNotification = function(msg)
	AddTextEntry('HelpNotif', msg)

	if thisFrame then
		DisplayHelpTextThisFrame('HelpNotif', false)
	else
		if beep == nil then beep = true end
		BeginTextCommandDisplayHelp('HelpNotif')
		EndTextCommandDisplayHelp(0, false, false, duration or -1)
	end
end

RegisterNetEvent("CarSell:DeleteCar", function(price)
	Notify("You have sold this car for: $"..price)
	DeleteEntity(GetVehiclePedIsIn(PlayerPedId()))
end)

