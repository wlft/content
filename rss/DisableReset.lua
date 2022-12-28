--[[
	RSS, Roblox Studio Simplified
	
	DisableReset.lua
	
	written by @Wolfite_
	30 December, 2022
]]

local StarterGui = game.StarterGui

-- Disable Reset
StarterGui:SetCore("ResetButtonCallback", false)

-- Disable Topbar
StarterGui:SetCore("TopbarEnabled", false)
