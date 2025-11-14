-- Shared weapon code
SWEP.PrintName = "Example Weapon"
SWEP.Author = "Your Name"
SWEP.Instructions = "Left click to shoot"
SWEP.Category = "Examples"

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 0
SWEP.SlotPos = 1
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true

SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"

function SWEP:Initialize()
	self:SetHoldType("pistol")
end

function SWEP:PrimaryAttack()
	if not IsFirstTimePredicted() then return end
	
	self:EmitSound("Weapon_Pistol.Single")
	self:SetNextPrimaryFire(CurTime() + 0.5)
	
	if SERVER then
		local owner = self:GetOwner()
		if IsValid(owner) then
			owner:ChatPrint("Example weapon fired!")
		end
	end
end

function SWEP:SecondaryAttack()
	-- Secondary attack code
end

function SWEP:Reload()
	-- Reload code
end
