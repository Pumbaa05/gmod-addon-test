-- Client-only autorun file
-- This file only runs on the client

print("[Addon Template] Client-side initialization")

-- Example client function
function AddonTemplate_ClientFunction()
	return "This only runs on the client"
end

-- Example: Create a client console command
concommand.Add("addon_test_client", function(ply, cmd, args)
	print("[Addon Template] Client test command executed")
end)
