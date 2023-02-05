--[[
	RSS, Roblox Studio Simplified
	
	ChatTags.lua
	
	written by @Wolfite_
	24 February, 2023
]]

local chatservice = require(game.ServerScriptService:WaitForChild("ChatServiceRunner", 10):WaitForChild("ChatService"))

local chat_tags = {
	[game.CreatorId] = {TagText = "CREATOR", TagColor = Color3.fromRGB(0,255,0), NameColor = Color3.fromRGB(255,0,0), ChatColor = Color3.fromRGB(0,255,0)};
}

chatservice.SpeakerAdded:Connect(function(plrname)
	local s = chatservice:GetSpeaker(plrname)
	local plr = game.Players[plrname]
	
	if chat_tags[plr.UserId] then
		local tag_info = chat_tags[plr.UserId]
		
		s:SetExtraData("Tags", {{TagText = tag_info.TagText, TagColor = tag_info.TagColor}})
		s:SetExtraData("NameColor", tag_info.NameColor)
		s:SetExtraData("ChatColor", tag_info.ChatColor)
	end
end)
