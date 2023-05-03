--[[
	RSS, Roblox Studio Simplified
	
	DeathMessageHandler.lua
	
	Written by @Wolfite_
	12 May, 2023
]]


local character = game.Players.LocalPlayer.Character
local messages = {"You Died!", "You fell!", "Death Message 3!"}

local function connect_death_message()
	character:WaitForChild("Humanoid").Died:Connect(function()
		script.Parent.Message.Visible = true
		script.Parent.Message.Text = messages[math.random(1, #messages)]
		wait(4)
		script.Parent.Message.Visible = false
	end)
end

connect_death_message()

game.Players.LocalPlayer.CharacterAdded:Connect(function(c)
	character = c
	connect_death_message()
end)
