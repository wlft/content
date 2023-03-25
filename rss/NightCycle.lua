--[[
	RSS, Roblox Studio Simplified
	
	NightCycle.lua
	
	written by @Wolfite_
	31 March, 2023
]]


local tween_service = game:GetService("TweenService")
local cycle_time = 10

while true do
	tween_service:Create(game.Lighting, TweenInfo.new(cycle_time, Enum.EasingStyle.Linear), {ClockTime = 0}):Play()
	wait(cycle_time)
	tween_service:Create(game.Lighting, TweenInfo.new(cycle_time, Enum.EasingStyle.Linear), {ClockTime = 12}):Play()
	wait(cycle_time)
end
