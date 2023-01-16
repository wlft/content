--[[
	RSS, Roblox Studio Simplified
	
	ShopFrameVisibilityToggle.lua
	
	written by @Wolfite_
	20 January, 2023
]]

script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.ShopFrame.Visible = not script.Parent.Parent.ShopFrame.Visible
end)
