local function upper(str)
    return str:gsub("^%l", string.upper)
end

local function register_lamp(name)
	minetest.register_node("cr_plus:"..name.."_lamp", {
		description = upper(name).." Lamp",
		tiles = {name.."_lamp.png"},
		groups = {cracky = 3},
		sounds = default.node_sound_glass_defaults(),
		light_source = minetest.LIGHT_MAX,
		paramtype = "light",
		use_texture_alpha = true,
		drawtype = "glasslike",
		sunlight_propagates = true,
	})

	minetest.register_craft({
		output = "cr_plus:"..name.."_lamp 4",
		recipe = {
			{"", "caverealms:glow_"..name, ""},
			{"caverealms:glow_"..name, "default:torch", "caverealms:glow_"..name},
			{"", "caverealms:glow_"..name, ""},
		}
	})

	if minetest.global_exists("stairsplus") then
		stairsplus:register_all("cr_plus", name.."_lamp", "cr_plus:"..name.."_lamp", {
			description = upper(name).." Lamp",
			tiles = {name.."_lamp.png"},
			groups = {cracky = 3},
			sunlight_propagates = true,
			light_source = minetest.LIGHT_MAX,
			use_texture_alpha = true,
			sounds = default.node_sound_glass_defaults(),
		})
	end
end

register_lamp("crystal")
register_lamp("emerald")
register_lamp("mese")
register_lamp("ruby")
register_lamp("amethyst")

minetest.register_craftitem("cr_plus:crystal_shard", {
	description = "Crystal Shard",
	inventory_image = "shard.png",
})	

minetest.register_node("cr_plus:crystal_glass", {
	description = "Crystal Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"crystal_glass.png", "crystal_glass_detail.png"},
	light_source = 3,
	paramtype = "light",
	use_texture_alpha = true,
	sunlight_propagates = true,
	groups = {cracky = 3, oddly_breakable_by_hand = 2.5},
	sounds = default.node_sound_glass_defaults(),
})

if minetest.global_exists("stairsplus") then
	stairsplus:register_all("cr_plus", "crystal_glass", "cr_plus:crystal_glass", {
		description = "Crystal Glass",
		tiles = {"crystal_glass.png"},
		groups = {cracky = 3, oddly_breakable_by_hand = 2.5},
		sunlight_propagates = true,
		use_texture_alpha = true,
		sounds = default.node_sound_glass_defaults(),
	})
end

for i = 1, 5 do
	if i == 1 then
		nodename = "caverealms:glow_gem"
	else
		nodename = "caverealms:glow_gem_"..i
	end

	minetest.register_craft({
		type = "shapeless",
		output = "cr_plus:crystal_shard "..tostring((i * 3)),
		recipe = {nodename},
	})
end

minetest.register_craft({
	type = "cooking",
	output = "cr_plus:crystal_glass",
	recipe = "cr_plus:crystal_shard",
})

