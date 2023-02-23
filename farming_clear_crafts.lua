--make salt craft give more than just 1
minetest.clear_craft({output = "farming:salt"})
minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "farming:salt 4",
	recipe = "bucket:bucket_water",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})

for i, itemname in pairs ({
	"farming:baking_tray",
	"farming:baked_potato",
	"farming:beetroot_soup",
	"farming:blueberry_pie",
	"farming:bowl",
	"farming:bread_multigrain",
	"farming:bread_slice",
	"farming:carrot_juice",
	"farming:chili_bowl",
	"farming:cutting_board",
	"farming:chocolate_dark",
	"farming:coffee_cup",
	"farming:cookie",
	"farming:corn_cob",
	"farming:cornstarch",
	"farming:donut",
	"farming:donut_apple",
	"farming:donut_chocolate",
	"farming:flour_multigrain",
	"farming:garlic_bread",
	"farming:jaffa_cake",
	"farming:juicer",
	"farming:mixing_bowl",
	"farming:mortar_pestle",
	"farming:muffin_blueberry",
	"farming:pea_soup",
	"farming:pepper_ground",
	"farming:pineapple_juice",
	"farming:porridge",
	"farming:pot",
	"farming:potato_salad",
	"farming:pumpkin_bread",
	"farming:pumpkin_dough",
	"farming:rhubarb_pie",
	"farming:rice_bread",
	"farming:rice_flour",
	"farming:saucepan",
	"farming:skillet",
	"farming:smoothie_raspberry",
	"farming:sugar",
	"farming:toast",
	"farming:toast_sandwich",
	"farming:tuckish_delight",
	"farming:tuckish_delight",
	"mobs:meat",--these for good measure
	"mobs:chicken_cooked",
	"mobs:cheese",
	"mobs:chicken_egg_fried",
	"mobs:butter",
	}) do
	if minetest.registered_items[itemname] then
		minetest.clear_craft({output = itemname})
		minetest.unregister_item(itemname)
	end
end
