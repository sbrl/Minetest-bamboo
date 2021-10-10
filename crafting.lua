--  ██████ ██████   █████  ███████ ████████ ██ ███    ██  ██████
-- ██      ██   ██ ██   ██ ██         ██    ██ ████   ██ ██
-- ██      ██████  ███████ █████      ██    ██ ██ ██  ██ ██   ███
-- ██      ██   ██ ██   ██ ██         ██    ██ ██  ██ ██ ██    ██
--  ██████ ██   ██ ██   ██ ██         ██    ██ ██   ████  ██████

minetest.register_craft({
	output = "sbrl_bamboo:bamboo_block",
	recipe = {
		{ "sbrl_bamboo:bamboo", "sbrl_bamboo:bamboo", "sbrl_bamboo:bamboo" },
		{ "sbrl_bamboo:bamboo", "sbrl_bamboo:bamboo", "sbrl_bamboo:bamboo" },
		{ "sbrl_bamboo:bamboo", "sbrl_bamboo:bamboo", "sbrl_bamboo:bamboo" }
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "sbrl_bamboo:bamboo 18",
	recipe = {
		"sbrl_bamboo:bamboo_block",
		"sbrl_bamboo:bamboo_block"
	}
})


-- ███████ ██    ██ ███████ ██
-- ██      ██    ██ ██      ██
-- █████   ██    ██ █████   ██
-- ██      ██    ██ ██      ██
-- ██       ██████  ███████ ███████

minetest.register_craft({
	type = "fuel",
	recipe = "sbrl_bamboo:bamboo",
	burntime = 1
})

minetest.register_craft({
	type = "fuel",
	recipe = "sbrl_bamboo:bamboo_block",
	burntime = 12 -- +3 burntime for crafting, so ~1.333 burntime / bamboo
})
