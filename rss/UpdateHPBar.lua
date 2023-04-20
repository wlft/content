--[[
	RSS, Roblox Studio Simplified
	
	UpdateHPBar.lua
	
	Written by @Wolfite_
	21 April, 2023
]]

local hp = 100
local char = game.Players.LocalPlayer.Character

local function update_bar()
	script.Parent.Bar:TweenSizeAndPosition(UDim2.new(hp/100,0,1,0),UDim2.new(0,0,0,0),"Out","Linear",0.15,true)
end

local function update_char(char)
	char:WaitForChild("Humanoid"):GetPropertyChangedSignal("Health"):Connect(function()
		hp = char.Humanoid.Health
		update_bar()
	end)
end

update_bar()
update_char(char)

game.Players.LocalPlayer.CharacterAdded:Connect(function(c)
	char = c
	update_char(c)
	hp = 100
	update_bar()
end)
