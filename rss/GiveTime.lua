--[[
	RSS, Roblox Studio Simplified
	
	GiveTime.lua
	
	written by @Wolfite_
	4 February, 2023
]]

game.Players.PlayerAdded:Connect(function(plr)
	while wait(1) do
		plr.leaderstats.Time.Value += 1
	end
end)
