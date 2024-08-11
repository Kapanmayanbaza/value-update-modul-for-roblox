--this should be a normal script you can put this code into the your main game script
local modul= require(game.ServerScriptService:WaitForChild("your module name"))
local remote = your remote in the module
modul.set()

remote.OnServerEvent:Connect(function(player)
	modul.upd()
	   
	end)