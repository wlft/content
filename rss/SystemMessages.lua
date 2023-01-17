--[[
	RSS, Roblox Studio Simplified
	
	SystemMessages.lua
	
	written by @Wolfite_
	27 January, 2023
]]

local function SendMessage(msg, color)
	game.ReplicatedStorage.SystemMessage:FireAllClients(msg, color)
end

wait(5)
print("-")
while true do
	SendMessage("[TIP]: Subscribe to Roblox Studio Simplified", Color3.fromRGB(255,0,0))
	wait(60)
	SendMessage("[TIP]: Press space to jump!", Color3.fromRGB(0,255,0))
	wait(60)
	SendMessage("[TIP]: Like the video!", Color3.fromRGB(0,0,255))
	wait(60)
end
