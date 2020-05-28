--  ██████ ██████   █████  ███████ ████████ ██ ███    ██  ██████
-- ██      ██   ██ ██   ██ ██         ██    ██ ████   ██ ██
-- ██      ██████  ███████ █████      ██    ██ ██ ██  ██ ██   ███
-- ██      ██   ██ ██   ██ ██         ██    ██ ██  ██ ██ ██    ██
--  ██████ ██   ██ ██   ██ ██         ██    ██ ██   ████  ██████

minetest.register_craft({
	output = "bamboo:bamboo_block",
	recipe = {
		{ "bamboo:bamboo", "bamboo:bamboo", "bamboo:bamboo" },
		{ "bamboo:bamboo", "bamboo:bamboo", "bamboo:bamboo" },
		{ "bamboo:bamboo", "bamboo:bamboo", "bamboo:bamboo" }
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "bamboo:bamboo 18",
	recipe = {
		"bamboo:bamboo_block",
		"bamboo:bamboo_block"
	}
})


-- ███████ ██    ██ ███████ ██
-- ██      ██    ██ ██      ██
-- █████   ██    ██ █████   ██
-- ██      ██    ██ ██      ██
-- ██       ██████  ███████ ███████

minetest.register_craft({
	type = "fuel",
	recipe = "bamboo:bamboo",
	burntime = 1
})

minetest.register_craft({
	type = "fuel",
	recipe = "bamboo:bamboo_block",
	burntime = 12 -- +3 burntime for crafting, so ~1.333 burntime / bamboo
})
