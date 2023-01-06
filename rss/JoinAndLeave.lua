--[[
	RSS, Roblox Studio Simplified
	
	JoinAndLeave.lua
	
	written by @Wolfite_
	13 January, 2023
]]

local StarterGui = game:GetService("StarterGui")

local function make_system_chat(msg, color)
	StarterGui:SetCore("ChatMakeSystemMessage",
		{
			Text = msg;
			Color = color;
			Font = Enum.Font.GothamMedium;
			FontSize = Enum.FontSize.Size12
		}
	)
end

-- When you join the server:
make_system_chat("@".. game.Players.LocalPlayer.Name.. " joined the server!", Color3.fromRGB(0,255,0))

-- When others join/leave
game.Players.PlayerAdded:Connect(function(plr)
	make_system_chat("@".. plr.Name.. " joined the server!", Color3.fromRGB(0,255,0))
end)

game.Players.PlayerRemoving:Connect(function(plr)
	make_system_chat("@".. plr.Name.. " left the server!", Color3.fromRGB(255,0,0))
end)
