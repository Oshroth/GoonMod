----------
-- Payday 2 GoonMod, Weapon Customizer Beta, built on 12/30/2014 6:10:13 PM
-- Copyright 2014, James Wilkinson, Overkill Software
----------

CloneClass( NetworkGame )

Hooks:RegisterHook("NetworkGamePostLoad")
function NetworkGame.load(self, game_data)
	Print("NetworkGame.load()")
	self.orig.load(self, game_data)
	Hooks:Call("NetworkGamePostLoad", self, game_data)
end

function NetworkGame.on_network_started(self)
	Print("NetworkGame.on_network_started()")
	self.orig.on_network_started(self)
end


function NetworkGame.init(self)
	Print("NetworkGame.init()")
	self.orig.init(self)
	Print("network manager: ", managers.network)
end
-- END OF FILE
