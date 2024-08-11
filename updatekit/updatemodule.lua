--this script should be into server script service and shoul be a modulescript

local updatethng= {
	[0] = {
		lvl = 1,
		cost = 100,
		nextcost = 250,
		value =100
	},
	[1] = {
		lvl = 2,
		cost = 250,
		nextcost = 1000,
		value = 250
	},
	[2] = {
		lvl = 3,
		cost = 1000,
		nextcost = 2500,
		value =500
	},
	[3] = {
		lvl = 4,
		cost = 2500,
		nextcost = 5000,
		value =1000
	},
	[4] = {
		lvl = 5,
		cost = 5000,
		nextcost = 10000,
		value =2500
	},
	[5] = {
		lvl = 6,
		cost = 10000,
		nextcost = 25000,
		value =5000
	},
	[6] = {
		lvl = 7,
		cost = 25000,
		nextcost = 50000,
		value =10000
	},
	[7] = {
		lvl = 8,
		cost = 50000,
		nextcost = 100000,
		value =25000
	},
	[8] = {
		lvl = 9,
		cost = 100000,
		nextcost = 250000,
		value =50000
	},
	[9] = {
		lvl = 10,
		cost = 250000,
		nextcost = 500000,
		value =100000
	},
	[10] = {
		lvl = 11,
		cost = 500000,
		nextcost = 1000000,
		value =250000
	},
	[11] = {
		lvl = 12,
		cost = 1000000,
		nextcost = 2500000,
		value =500000
	},
	[12] = {
		lvl = 13,
		cost = 2500000,
		nextcost = 5000000,
		value =1000000
	},
	[13] = {
		lvl = 14,
		cost = 5000000,
		nextcost = 10000000,
		value =2500000
	},
	[14] = {
		lvl = 15,
		cost = 10000000,
		nextcost = 25000000,
		value =5000000
	},
	[15] = {
		lvl = 16,
		cost = 25000000,
		nextcost = 50000000,
		value =10000000
	},
	[16] = {
		lvl = 17,
		cost = 50000000,
		nextcost = 100000000,
		value =25000000
	},
	[17] = {
		lvl = 18,
		cost = 100000000,
		nextcost = 250000000 ,
		value = 50000000
	},
	[18] = {
		lvl = 19,
		cost = 250000000,
		nextcost = 500000000 ,
		value = 100000000
	},
	[19] = {
		lvl = 20,
		cost = 500000000,
		nextcost = nil,
		value = 50000000
	},
	
}
-- you should create a remote event in replicated storage
local remote = game.ReplicatedStorage:WaitForChild("your remotes name")
local Players = game:GetService("Players")
--you should create an other event for set the update gui when the player joins the game
local event = game.ReplicatedStorage.otherevent

function updatethng.set(player) -- this is for set the gui when the player joins game
	event.OnServerEvent:Connect(function(player)
		print(player)
	local leaderstats = player:WaitForChild("leaderstats")
        -- this is your shops things button texts exc.

	local buton = your button
	local lvl = leaderstats.lvl
	local value = leaderstats.value
	local mny = leaderstats.money -- this is money
	for i,v in pairs(updatethng) do
		if lvl.Value == i then
			buton.Text = tostring(v.nextcost)
		end
		end
	end)
end

		
function upgradethng.upd(player) -- this is our function for update value
	remote.OnServerEvent:Connect(function(player)
		local leaderstats = player:WaitForChild("leaderstats")
		
		local buton = yourbutton
       local lvl = leaderstats.lvl
	local value = leaderstats.value
	local mny = leaderstats.money -- this is money
		local debounce = false -- this is for not spam
	   for i,v in pairs(updatethng) do
		if lvl.Value == i then
		 if mny.Value >= v.cost then
				
			mny.Value = mny.Value - v.cost
			lvl.Value = v.lvl
			value.Value = v.value
			buton.Text = tostring(v.nextcost)
		 elseif money.Value < v.cost and debounce == false then
				debounce = true
				buton.Text = "Not Enough Money"
					buton.BackgroundColor3 = Color3.fromRGB(255,0,0)
				wait(1)
				buton.Text = tostring(v.cost)
					buton.BackgroundColor3 = Color3.fromRGB(85,255,0)
				debounce = false
	   end
	end
end



end)
end


return updatethng