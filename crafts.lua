minetest.register_craft({
	output = 'cr_plus:crystal_lamp 4',
	recipe = {
		{'', 'caverealms:glow_crystal',''},
		{'caverealms:glow_crystal','default:torch','caverealms:glow_crystal'},
		{'','caverealms:glow_crystal',''},
	}
})

minetest.register_craft({
	output = 'cr_plus:emerald_lamp 4',
	recipe = {
		{'', 'caverealms:glow_emerald',''},
		{'caverealms:glow_emerald','default:torch','caverealms:glow_emerald'},
		{'','caverealms:glow_emerald',''},
	}
})

minetest.register_craft({
	output = 'cr_plus:mese_lamp 4',
	recipe = {
		{'', 'caverealms:glow_mese',''},
		{'caverealms:glow_mese','default:torch','caverealms:glow_mese'},
		{'','caverealms:glow_mese',''},
	}
})

minetest.register_craft({
	output = 'cr_plus:ruby_lamp 4',
	recipe = {
		{'', 'caverealms:glow_ruby',''},
		{'caverealms:glow_ruby','default:torch','caverealms:glow_ruby'},
		{'','caverealms:glow_ruby',''},
	}
})

minetest.register_craft({
	output = 'cr_plus:amethyst_lamp 4',
	recipe = {
		{'', 'caverealms:glow_amethyst',''},
		{'caverealms:glow_amethyst','default:torch','caverealms:glow_amethyst'},
		{'','caverealms:glow_amethyst',''},
	}
})

local glow_gem_size = { 1, 2, 3, 4, 5 }

for i in ipairs(glow_gem_size) do
	if i == 1 then
		nodename = "caverealms:glow_gem"
	else
		nodename = "caverealms:glow_gem_"..i
	end

	minetest.register_craft({
		type = "shapeless",
		output = 'cr_plus:crystal_shard '..tostring((i * 3)),
		recipe = {nodename},
	})
end

minetest.register_craft({
	type = 'cooking',
	output = 'cr_plus:crystal_glass',
	recipe = 'cr_plus:crystal_shard',
})

