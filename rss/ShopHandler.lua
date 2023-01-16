--[[
	RSS, Roblox Studio Simplified
	
	ShopHandler.lua
	
	written by @Wolfite_
	20 January, 2023
]]


game.ReplicatedStorage.Events.BuyItem.OnServerEvent:Connect(function(plr, item_name)
	local item = game.ServerStorage.Items[item_name]:Clone()
	
	if not item then return end
	if item.Price.Value > plr.leaderstats.Coins.Value then return end
	plr.leaderstats.Coins.Value -= item.Price.Value
	
	
	item.Parent = plr.Backpack
	local item2 = game.ServerStorage.Items[item_name]:Clone()
	item2.Parent = plr.StarterGear
	
end)
