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
	

	local Character = VorpCore.getUser(_source).getUsedCharacter
<<<<<<< HEAD
	local Receiver = VorpCore.getUser(_criminal).getUsedCharacter
    local job = Character.job
    if job == 'police' then
=======
    	local job = Character.job
        if job == 'police' then
>>>>>>> 977539d6161f5e7137b407f790afa7bb7e5ca8dc
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