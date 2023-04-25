--[[
	RSS, Roblox Studio Simplified
	
	RobuxCoinHandler.lua
	
	Written by @Wolfite_
	28 April, 2023
]]

function processReceipt(info)
	local plr = game:GetService("Players"):GetPlayerByUserId(info.PlayerId)
	
	if plr then
		if info.ProductId == PRODUCT_100_HERE then
			-- 100 coins
			plr.leaderstats.Coins.Value += 100
			return Enum.ProductPurchaseDecision.PurchaseGranted
		elseif info.ProductId == PRODUCT_1000_HERE then
			-- 1 000 coins
			plr.leaderstats.Coins.Value += 1000
			return Enum.ProductPurchaseDecision.PurchaseGranted
		end
	else
		return Enum.ProductPurchaseDecision.NotProcessedYet
	end
end

game:GetService("MarketplaceService").ProcessReceipt = processReceipt
