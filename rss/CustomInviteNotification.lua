--[[
	RSS, Roblox Studio Simplified
	
	CustomInviteNotification.lua
	
	Written by @Wolfite_
	24 March, 2023
]]

local ss = game:GetService("SocialService")

script.Parent.MouseButton1Click:Connect(function()
	if ss:CanSendGameInviteAsync(game.Players.LocalPlayer) then
		local opts = Instance.new("ExperienceInviteOptions")
		opts.InviteMessageId = "YOUR-ID-HERE"
		opts.PromptMessage = "Invite some cool people!"
		opts.LaunchData = "custom-invite"
		
		ss:PromptGameInvite(game.Players.LocalPlayer, opts)
	end
end)
