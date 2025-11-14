-- Server-only autorun file
-- This file only runs on the server

print("[Addon Template] Server-side initialization")

-- Example server function
function AddonTemplate_ServerFunction()
	return "This only runs on the server"
end

-- Example: Add a server console command
concommand.Add("addon_test", function(ply, cmd, args)
	print("[Addon Template] Test command executed by: " .. (IsValid(ply) and ply:Nick() or "Console"))
end)
