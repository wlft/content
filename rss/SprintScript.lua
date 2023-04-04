--[[
	RSS, Roblox Studio Simplified
	
	ShiftScript.lua
	
	written by @Wolfite_
	7 April, 2023
]]

local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(input, gpe)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.LeftShift then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
		end
	end
end)

uis.InputEnded:Connect(function(input, gpe)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.LeftShift then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end
	end
end)
