minetest.register_node("sbrl_bamboo:bamboo_block", {
	description = "Bamboo Block",
	is_ground_content = false,
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = { "sbrl_bamboo_block-dry.png" },
	groups = {
		flammable = 3,
		float = 3,
		wood = 1,
		choppy = 3,
		oddly_breakable_by_hand = 2
	}
})

if minetest.get_modpath("default") then
	minetest.override_item("sbrl_bamboo:bamboo_block", {
		sounds = default.node_sound_wood_defaults()
	})
end
