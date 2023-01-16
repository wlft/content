--[[
	RSS, Roblox Studio Simplified
	
	BuyItemTrigger.lua
	
	written by @Wolfite_
	20 January, 2023
]]

game.Players.PlayerAdded:Connect(function(plr)
	local l = Instance.new("Folder", plr)
	l.Name = "leaderstats"
	local coins = Instance.new("IntValue", l)
	coins.Name = "Coins"
	coins.Value = 1000
end)
