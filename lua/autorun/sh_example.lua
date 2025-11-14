-- Shared autorun file (runs on both client and server)
-- This file is executed automatically when the addon loads

if SERVER then
	print("[Addon Template] Loaded on server")
else
	print("[Addon Template] Loaded on client")
end

-- Example shared function
function AddonTemplate_Shared()
	return "This runs on both client and server"
end
