--[[
	RSS, Roblox Studio Simplified
	
	PurchaseProduct.lua
	
	Written by @Wolfite_
	28 April, 2023
]]

script.Parent.MouseButton1Click:Connect(function()
	game:GetService("MarketplaceService"):PromptProductPurchase(game.Players.LocalPlayer, PRODUCT_ID_HERE)
end)
