game.Players.PlayerAdded:Connect(function(player)
	
	local leaderstats = Instance.new("Folder") 
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local money = Instance.new("IntValue")
	money.Name = "Money"
	money.Value = 50
	money.Parent = leaderstats

       local value = Instance.new("IntValue")
	value.Name = "value"
	value.Value = 0
	value.Parent = leaderstats

      local lvl = Instance.new("IntValue")
	lvl.Name = "lvl"
	lvl.Value = 0
	lvl.Parent = leaderstats
end)