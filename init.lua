--- Bamboo
-- @module bamboo
-- @release 0.1
-- @copyright 2018 Starbeamrainbowlabs
-- @license Mozilla Public License, 2.0
-- @author Starbeamrainbowlabs

sbrl_bamboo = {
	modpath = minetest.get_modpath("sbrl_bamboo")
}

dofile(sbrl_bamboo.modpath.."/bamboo_plant.lua");
dofile(sbrl_bamboo.modpath.."/bamboo_block.lua");
dofile(sbrl_bamboo.modpath.."/crafting.lua");
