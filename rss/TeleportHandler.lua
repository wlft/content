--[[
	RSS, Roblox Studio Simplified
	
	TeleportHandler.lua
	
	Written by @Wolfite_
	5 May, 2023
]]

local db = false

script.Parent.Part1.Touched:Connect(function(h)
	if h.Parent:FindFirstChildOfClass("Humanoid") then
		if not db then
			db = true
			h.Parent.HumanoidRootPart.CFrame = script.Parent.Part2.CFrame + Vector3.new(0,2.5,0)
			wait(1.5)
			db = false
		end
	end
end)

script.Parent.Part2.Touched:Connect(function(h)
	if h.Parent:FindFirstChildOfClass("Humanoid") then
		if not db then
			db = true
			h.Parent.HumanoidRootPart.CFrame = script.Parent.Part1.CFrame + Vector3.new(0,2.5,0)
			wait(1.5)
			db = false
		end
	end
end)
