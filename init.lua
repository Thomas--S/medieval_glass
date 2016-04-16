minetest.register_node("medieval_glass:glass", {
    description = "Medieval Glass",
    drawtype = "glasslike",
    tiles = {"medieval_glass.png"},
    paramtype = "light",
    sunlight_propagates = true,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("medieval_glass:glow_glass", {
    description = "Medieval Glow Glass",
    drawtype = "glasslike",
    tiles = {"medieval_glass.png"},
    paramtype = "light",
    light_source = 18,
    sunlight_propagates = true,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'medieval_glass:glow_glass 1',
	recipe = {
		{'medieval_glass:glass'},
		{'default:torch'}
	}
})

minetest.register_craft({
	output = 'medieval_glass:glass 1',
	recipe = {
		{'medieval_glass:glow_glass'},
	}
})


minetest.register_craft({
	output = 'medieval_glass:glass 8',
	recipe = {
		{'default:glass', 'default:steel_ingot', 'default:glass'},
		{'default:steel_ingot', 'default:glass', 'default:steel_ingot'},
		{'default:glass', 'default:steel_ingot', 'default:glass'},
	}
})

minetest.register_node("medieval_glass:stained_glass", {
    description = "Stained Glass Block",
    drawtype = "glasslike",
    tiles = {"homedecor_stained_glass.png"},
    paramtype = "light",
    sunlight_propagates = true,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    sounds = default.node_sound_glass_defaults(),
	use_texture_alpha = true,
	light_source = 3,
})


minetest.register_craft({
	output = 'medieval_glass:stained_glass 4',
	recipe = {
		{'homedecor:stained_glass', 'homedecor:stained_glass'},
		{'homedecor:stained_glass', 'homedecor:stained_glass'}
	}
})
