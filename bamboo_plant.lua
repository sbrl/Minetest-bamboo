minetest.register_node("bamboo:bamboo", {
	description = "Bamboo",
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = false,
	groups = {
		snappy = 2,
		flammable = 3,
		float = 3,
		-- flora = 1,
		attached_node = 1,
		plant = 1
	},
	-- TODO: Make it drop an item too, but unsure how to achieve that
	floodable = true,
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
		local pos_below = { x = pos.x, y = pos.y - 1, z = pos.z }
		local node_below = minetest.get_node(pos_below)
		
		local is_sand = minetest.get_item_group(node_below.name, "sand") ~= 0
		local is_soil = minetest.get_item_group(node_below.name, "soil")
		local is_growable = true
		-- Apparently bamboo doesn't like wet soils
		-- Ref https://dev.minetest.net/Groups/Shared_groups, if soil == 3 then it's wet
		if is_soil > 2 or is_soil == 0 then is_soil = false end
		-- Ref https://dev.minetest.net/Groups/Custom_groups
		if minetest.get_item_group(node_below.name, "wet") > 3 then
			is_growable = false
		end
		
		if minetest.get_item_group(minetest.get_node({ x = pos.x - 1, y = pos.y, z = pos.z }).name, "water") ~= 0
			or minetest.get_item_group(minetest.get_node({ x = pos.x + 1, y = pos.y, z = pos.z }).name, "water") ~= 0
			or minetest.get_item_group(minetest.get_node({ x = pos.x, y = pos.y, z = pos.z - 1 }).name, "water") ~= 0
			or minetest.get_item_group(minetest.get_node({ x = pos.x, y = pos.y, z = pos.z + 1 }).name, "water") ~= 0
			or minetest.get_item_group(minetest.get_node({ x = pos.x, y = pos.y + 1, z = pos.z }).name, "water") ~= 0
		then is_growable = false end
		
		-- Bamboo doesn't grow in the dark, as far as I know
		if minetest.get_node_light(pos, 0.5) < 8 then
			is_growable = false
		end
		
		if not is_sand and not is_soil then
			is_growable = false
		end
		
		-- If we're not in a suitable location, then uproot
		if not is_growable then
			minetest.dig_node(pos)
			return
		end
		
		-- Randomly set param2 to vary the eventual height it grows to, but only if it hasn't been set already
		local node = minetest.get_node(pos)
		if node.param2 == 0 then
			node.param2 = math.random(0, 21)
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
		if node_next.name ~= "air" or node.param2 > 24 then
			return
		end
		minetest.set_node(pos_new, { name = "bamboo:bamboo", param2 = node.param2 + 1 })
	end
})
