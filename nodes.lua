minetest.register_node("cr_plus:crystal_lamp", {
	description = "Crystal Lamp",
	tiles = {"crystal_lamp.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

minetest.register_node("cr_plus:emerald_lamp", {
	description = "Emerald Lamp",
	tiles = {"emerald_lamp.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

minetest.register_node("cr_plus:mese_lamp", {
	description = "Mese Lamp",
	tiles = {"mese_lamp.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

minetest.register_node("cr_plus:ruby_lamp", {
	description = "Ruby Lamp",
	tiles = {"ruby_lamp.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

minetest.register_node("cr_plus:amethyst_lamp", {
	description = "Amethyst Lamp",
	tiles = {"amethyst_lamp.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
})

minetest.register_craftitem("cr_plus:crystal_shard", {
	description = "Crystal Shard",
	inventory_image = "shard.png",
})	

minetest.register_node("cr_plus:crystal_glass", {
	description = "Crystal Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"crystal_glass.png", "crystal_glass_detail.png"},
	is_ground_content = false,
	light_source = 3,
	paramtype = "light",
	use_texture_alpha = true,
	sunlight_propagates = true,
	groups = {cracky = 3, oddly_breakable_by_hand = 2.5},
	sounds = default.node_sound_glass_defaults(),
})
