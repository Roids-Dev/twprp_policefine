----- Made by Roids#9757 for The Wack Pack RP - RedM Project -----




RegisterCommand("fine", function(source, args)
	local _source = source
	local criminal = args[1]
	local fine = args[2]
    TriggerServerEvent("twprp:fine", criminal, fine)
end)


--RegisterNetEvent('twprp:notacop')
--AddEventHandler('twprp:notacop', function()
--	local _source = source
--	TriggerEvent("vorp:Tip", "Only lawmen can do that. You are not a lawman!", 5000)
--	end)


