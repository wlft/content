--[[
	RSS, Roblox Studio Simplified
	
	HD_CMDLINE.lua
	
	written by @Wolfite_
	11 February, 2023
	
	NOT A FULL SCRIPT
]]

{
	Name = "stratosphere";
	Aliases	= {"moon"};
	Prefixes = {settings.Prefix};
	Rank = 3;
	RankLock = false;
	Loopable = false;
	Tags = {};
	Description = "Send someone to the stratosphere.";
	Contributors = {"WWolfite"};
	--
	Args = {"Player", "Force"};
	Function = function(speaker, args)
		local bw = Instance.new("BodyVelocity")
		bw.P = 1250
		bw.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		bw.Velocity = Vector3.new(0,args[2]*10,0)
		bw.Parent = args[1].Character.Head
	end;
	UnFunction = function(speaker, args)

	end;
	--
};
