----------------------------------------------

   ----- Made by Roids#9757 for TWPRP -----   

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