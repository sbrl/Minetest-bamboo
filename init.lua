--- Bamboo
-- @module bamboo
-- @release 0.1
-- @copyright 2018 Starbeamrainbowlabs
-- @license Mozilla Public License, 2.0
-- @author Starbeamrainbowlabs

bamboo = {
	modpath = minetest.get_modpath("bamboo")
}

dofile(bamboo.modpath.."/bamboo_plant.lua");
dofile(bamboo.modpath.."/bamboo_block.lua");
dofile(bamboo.modpath.."/crafting.lua");
