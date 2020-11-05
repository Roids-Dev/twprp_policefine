--------------------------------------
---- Made by Roids#9757 for TWPRP ----
--------------------------------------
------- VORP Stuff don't touch -------
--------------------------------------
local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VORP = exports.vorp_core:vorpAPI()
--------------------------------------
-- Don't touch this shit either lol --
--------------------------------------
RegisterServerEvent("twprp:fine")
AddEventHandler("twprp:fine", function(criminal, fine)
	local _source = source
	local _criminal = criminal
	local _fine = fine
	local Character = VorpCore.getUser(_source).getUsedCharacter
	local Receiver = VorpCore.getUser(_criminal).getUsedCharacter
    	local job = Character.job
    		if job == 'police' then
			--print('cop working')
		TriggerClientEvent("vorp:TipBottom", _criminal, 'You have been Fined $'.._fine, 5000)
		TriggerClientEvent("vorp:TipBottom", _source , Receiver.firstname..' '..Receiver.lastname..' has been Fined $'.._fine, 5000)
		--TriggerClientEvent("vorp:TipBottom", _source, 'You have Fined $'.._fine, 5000)
		VORP.removeMoney(_criminal, 0, _fine)
		Citizen.Wait(2000)
	end
	if job ~= 'police' then
		TriggerClientEvent("vorp:TipBottom", _source, "Only lawmen can do that. You are not a lawman!", 5000)
			--print('Not a cop working')
	end
end)
--------------------------------------
----- Now was that so hard? LOL ------
--------------------------------------
RegisterServerEvent("twprp:jail")
AddEventHandler("twprp:jail", function(criminal, jail, time)
	local _source = source
	local _criminal = criminal
	local _jail = jail
	local _time = time
	local Character = VorpCore.getUser(_source).getUsedCharacter
	local Receiver = VorpCore.getUser(_criminal).getUsedCharacter
    	local job = Character.job
    		if job == 'police' then
			--print('cop working')
		TriggerClientEvent("vorp:TipBottom", _criminal, 'You have been sentenced to '..time..' minutes!', 5000)
		TriggerClientEvent("vorp:TipBottom", _source , Receiver.firstname..' '..Receiver.lastname..' has been sentenced to '.._time..' minutes', 5000)
		--TriggerClientEvent("vorp:TipBottom", _source, 'You have Fined $'.._fine, 5000)
		--VORP.removeMoney(_criminal, 0, _fine)
		TriggerClientEvent('twprp:jail', _criminal, _jail, _time)
		Citizen.Wait(2000)
	end
	if job ~= 'police' then
		TriggerClientEvent("vorp:TipBottom", _source, "Only lawmen can do that. You are not a lawman!", 5000)
			--print('Not a cop working')
	end
end)