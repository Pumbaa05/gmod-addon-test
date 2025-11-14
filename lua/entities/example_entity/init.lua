-- Server-side entity code
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/props_c17/oildrum001.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
		phys:Wake()
	end
end

function ENT:Use(activator, caller)
	self:EmitSound("buttons/button15.wav")
	if IsValid(activator) and activator:IsPlayer() then
		activator:ChatPrint("You used the example entity!")
	end
end
