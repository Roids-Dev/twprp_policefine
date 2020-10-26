----- Made by Roids#9757 for The Wack Pack RP - RedM Project -----




local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VORP = exports.vorp_core:vorpAPI()


RegisterServerEvent("twprp:fine")
AddEventHandler("twprp:fine", function(criminal, fine)
	local _source = source
	local _criminal = criminal
	local _fine = fine
	--local User = VorpCore.getUser(_criminal)
	--local Character = User.getUsedCharacter
	TriggerEvent("vorp:getCharacter",_criminal,function(user)

	local Character = VorpCore.getUser(_source).getUsedCharacter
    	local job = Character.job
        if job == 'police' then
			--print('cop working')
			TriggerClientEvent("vorp:Tip", _criminal, 'You have been fined $'.._fine, 5000)
			VORP.removeMoney(_criminal, 0, _fine)
			Citizen.Wait(5500)
			TriggerClientEvent("vorp:Tip", _source, user.firstname..' '..user.lastname..' has been fined $'.._fine, 5000)
		end
		if job ~= 'police' then
			TriggerClientEvent("vorp:Tip", _source, "Only lawmen can do that. You are not a lawman!", 5000)
				--print('Not a cop working')
		end
	end)
end)


