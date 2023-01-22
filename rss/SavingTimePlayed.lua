--[[
	RSS, Roblox Studio Simplified
	
	SavingTimePlayed.lua
	
	written by @Wolfite_
	4 February, 2023
]]

local DSS = game:GetService("DataStoreService")
local store = DSS:GetDataStore("time_played")

game.Players.PlayerAdded:Connect(function(plr)
	local l = Instance.new("Folder", plr)
	l.Name = "leaderstats"
	
	local time_played = Instance.new("IntValue", l)
	time_played.Name = "Time"
	
	local s, err = pcall(function()
		time_played.Value = store:GetAsync(tostring(plr.UserId).. "-data")
	end)
	
	if not s then
		warn(err)
	end
end)

game.Players.PlayerRemoving:Connect(function(plr)
	local s, err = pcall(function()
		store:SetAsync(tostring(plr.UserId).. "-data", plr.leaderstats.Time.Value)
	end)
end)
