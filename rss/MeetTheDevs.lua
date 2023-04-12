--[[
	RSS, Roblox Studio Simplified
	
	MeetTheDevs.lua
	
	Written by @Wolfite_
	14 April, 2023
]]

local badge_service = game:GetService("BadgeService")
local badge_id = 2143875261
local devs = {655331725}

local function award_badge()
	for _, v in pairs(game.Players:GetChildren()) do
		if v:IsA("Player") then
			if not badge_service:UserHasBadgeAsync(v.UserId, badge_id) then
				badge_service:AwardBadge(v.UserId, badge_id)
			end
		end
	end
end

game.Players.PlayerAdded:Connect(function(plr)
	if table.find(devs, plr.UserId) then
		award_badge()
	else
		for _, v in pairs(game.Players:GetChildren()) do
			if table.find(devs, v.UserId) then
				award_badge()
			end
		end
	end
end)
