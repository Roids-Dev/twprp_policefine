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
