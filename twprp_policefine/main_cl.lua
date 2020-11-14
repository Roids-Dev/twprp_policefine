----------------------------------------------

   ----- Made by Roids#9757 for TWPRP -----   

----------------------------------------------
----------------------------------------------
-- Add extra cells here --
valcell1 = {x, y, z}
valcell2 = {x, y, z}
valRelease = {x, y, z}
----------------------------------------------
----------------------------------------------
-- FINE --
----------------------------------------------
RegisterCommand("fine", function(source, args)
	local _source = source
	local criminal = args[1]
	local fine = args[2]
    TriggerServerEvent("twprp:fine", criminal, fine)
end)
----------------------------------------------
--- /FINE ---
----------------------------------------------
----------------------------------------------
--- JAIL ---
----------------------------------------------
RegisterCommand("jail", function(source, args)
	local _source = source
	local criminal = args[1]
	local jail = args[2]
	local time = args[3]
    TriggerServerEvent("twprp:jail", criminal, jail, time)
end)
----------------------------------------------
--- /JAIL ---
----------------------------------------------
RegisterNetEvent('twprp:jail')
AddEventHandler('twprp:jail', function(jail, time)
	local playerPed = PlayerPedId()
	local _time = ((time/1000)/60)
	if jail == 1 then
		SetEntityCoords(playerPed, valcell1[1], valcell1[2], valcell1[3], 0, 0, 0, 0)
		Citizen.Wait(time)
		SetEntityCoords(playerPed, valRelease[1], valRelease[2], valRelease[3], 0, 0, 0, 0)
		TriggerEvent("vorp:TipBottom", 'You have been released after '.._time..' minutes!', 5000)
	elseif jail == 2 then
		SetEntityCoords(playerPed, valcell2[1], valcell2[2], valcell2[3], 0, 0, 0, 0)
		Citizen.Wait(time)
		SetEntityCoords(playerPed, valRelease[1], valRelease[2], valRelease[3], 0, 0, 0, 0)
		TriggerEvent("vorp:TipBottom", 'You have been released after '.._time..' minutes!', 5000)
	end
end)