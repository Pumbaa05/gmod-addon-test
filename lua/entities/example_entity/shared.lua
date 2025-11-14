-- Shared entity code
ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Example Entity"
ENT.Author = "Your Name"
ENT.Category = "Examples"
ENT.Spawnable = true
ENT.AdminOnly = false

function ENT:SetupDataTables()
	-- Setup networked variables here
	-- self:NetworkVar("Float", 0, "ExampleVar")
end
