--[[
	RSS, Roblox Studio Simplified
	
	BuyItemTrigger.lua
	
	written by @Wolfite_
	20 January, 2023
]]


script.Parent.MouseButton1Click:Connect(function()
	game.ReplicatedStorage.Events.BuyItem:FireServer(script.Parent.Parent.ItemName.Value)
end)
