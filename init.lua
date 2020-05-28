

minetest.register_node("bamboo:bamboo", {
	description = "Bamboo",
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {
		snappy = 2,
		flammable = 3,
		float = 3,
		flora = 1,
		attached_node = 1
	},
	tiles = {
		"bamboo_bamboo-top.png", -- top
		"bamboo_bamboo-top.png", -- bottom
		"bamboo_bamboo-side.png",-- left
		"bamboo_bamboo-side.png",-- right
		"bamboo_bamboo-side.png",-- front
		"bamboo_bamboo-side.png"-- back
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2500, -0.5000, -0.2500, 0.2500, 0.5000, 0.2500}
		}
	},
	on_construct = function(pos)
		-- Randomly set param2 to vary the eventual height it grows to, but only if it hasn't been set already
		local node = minetest.get_node(pos)
		if node.param2 == 0 then
			node.param2 = math.random(0, 10)
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_abm({
	label = "bamboo_growth",
	nodenames = { "bamboo:bamboo" },
	neighbours = { "air" },
	interval = 45,
	chance = 4, -- 1 in 2
	catch_up = false,
	action = function (pos, node, active_object_count, active_object_count_wider)
		local pos_new = { x = pos.x, y = pos.y + 1, z = pos.z }
		local node_next = minetest.get_node(pos_new)
		minetest.log("Bamboo ABM called, node above:"..node.name)
		if node_next.name ~= "air" or node.param2 > 24 then
			return
		end
		minetest.set_node(pos_new, { name = "bamboo:bamboo", param2 = node.param2 + 1 })
	end
})
