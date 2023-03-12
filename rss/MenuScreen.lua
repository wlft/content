--[[
	RSS, Roblox Studio Simplified
	
	MenuScreen.lua
	
	written by @Wolfite_
	17 March, 2023
]]

repeat workspace.Camera.CameraType = Enum.CameraType.Scriptable wait() until workspace.Camera.CameraType == Enum.CameraType.Scriptable

workspace.Camera.CFrame = workspace._MenuCamera.CFrame

script.Parent.Play.MouseButton1Click:Connect(function()
	script.Parent.Play:TweenPosition(UDim2.new(0.438, 0,1.5, 0), "Out", "Linear", 0.4, true)
	script.Parent.Invite:TweenPosition(UDim2.new(0.438, 0,1.5, 0), "Out", "Linear", 0.4, true)
	wait(0.4)
	workspace.Camera.CameraType = Enum.CameraType.Custom
	script.Parent.Enabled = false
end)

script.Parent.Invite.MouseButton1Click:Connect(function()
	if game:GetService("SocialService"):CanSendGameInviteAsync(game.Players.LocalPlayer) then
		game:GetService("SocialService"):PromptGameInvite(game.Players.LocalPlayer)
	end
end)
