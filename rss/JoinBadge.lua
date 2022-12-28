--[[
	RSS, Roblox Studio Simplified
	
	JoinBadge.lua
	
	written by @Wolfite_
	5 September, 2022
]]

local function awardBadge(plr, id)
	if not game:GetService("BadgeService"):UserHasBadgeAsync(plr.UserId, 2128402179) then
		game:GetService("BadgeService"):AwardBadge(plr.UserId, 2128402179)
	end
end

game.Players.PlayerAdded:Connect(function(plr)
	awardBadge(plr, 2128402179)
end)
