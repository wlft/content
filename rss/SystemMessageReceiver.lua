--[[
	RSS, Roblox Studio Simplified
	
	Reciever.lua
	
	written by @Wolfite_
	27 January, 2023
]]

game.ReplicatedStorage.SystemMessage.OnClientEvent:Connect(function(msg, color)
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",
	{
		Text = msg;
		Color = color;
		Font = Enum.Font.GothamMedium;
		FontSize = Enum.FontSize.Size14;
	})
end)
