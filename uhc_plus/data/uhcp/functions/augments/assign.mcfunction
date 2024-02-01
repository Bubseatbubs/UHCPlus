##
# Assign augment value based on the item left in player's inventory
##

# Gold Augments
execute store success score @s uhcp_a_count run clear @s minecraft:honeycomb{augment:0b} 1
execute if score @s uhcp_a_count matches 1.. run return 0

execute store success score @s uhcp_a_count run clear @s minecraft:feather{augment:1b} 1
execute if score @s uhcp_a_count matches 1.. run return 1

execute store success score @s uhcp_a_count run clear @s minecraft:diamond{augment:2b} 1
execute if score @s uhcp_a_count matches 1.. run return 2

execute store success score @s uhcp_a_count run clear @s minecraft:redstone{augment:3b} 1
execute if score @s uhcp_a_count matches 1.. run return 3

execute store success score @s uhcp_a_count run clear @s minecraft:leather{augment:4b} 1
execute if score @s uhcp_a_count matches 1.. run return 4

execute store success score @s uhcp_a_count run clear @s minecraft:netherite_upgrade_smithing_template{augment:5b} 1
execute if score @s uhcp_a_count matches 1.. run return 5

execute store success score @s uhcp_a_count run clear @s minecraft:gold_nugget{augment:7b} 1
execute if score @s uhcp_a_count matches 1.. run return 7

execute store success score @s uhcp_a_count run clear @s minecraft:magma_block{augment:8b} 1
execute if score @s uhcp_a_count matches 1.. run return 8

execute store success score @s uhcp_a_count run clear @s minecraft:golden_apple{augment:10b} 1
execute if score @s uhcp_a_count matches 1.. run return 10

execute store success score @s uhcp_a_count run clear @s minecraft:oak_leaves{augment:11b} 1
execute if score @s uhcp_a_count matches 1.. run return 11

execute store success score @s uhcp_a_count run clear @s minecraft:goat_horn{augment:12b} 1
execute if score @s uhcp_a_count matches 1.. run return 12

execute store success score @s uhcp_a_count run clear @s minecraft:miner_pottery_sherd{augment:13b} 1
execute if score @s uhcp_a_count matches 1.. run return 13

execute store success score @s uhcp_a_count run clear @s minecraft:stick{augment:14b} 1
execute if score @s uhcp_a_count matches 1.. run return 14

execute store success score @s uhcp_a_count run clear @s minecraft:apple{augment:15b} 1
execute if score @s uhcp_a_count matches 1.. run return 15

execute store success score @s uhcp_a_count run clear @s minecraft:shield{augment:17b} 1
execute if score @s uhcp_a_count matches 1.. run return 17

execute store success score @s uhcp_a_count run clear @s minecraft:clock{augment:18b} 1
execute if score @s uhcp_a_count matches 1.. run return 18

execute store success score @s uhcp_a_count run clear @s minecraft:golden_sword{augment:19b} 1
execute if score @s uhcp_a_count matches 1.. run return 19

execute store success score @s uhcp_a_count run clear @s minecraft:emerald{augment:20b} 1
execute if score @s uhcp_a_count matches 1.. run return 20

execute store success score @s uhcp_a_count run clear @s minecraft:eye_armor_trim_smithing_template{augment:21b} 1
execute if score @s uhcp_a_count matches 1.. run return 21

execute store success score @s uhcp_a_count run clear @s minecraft:iron_chestplate{augment:22b} 1
execute if score @s uhcp_a_count matches 1.. run return 22

execute store success score @s uhcp_a_count run clear @s minecraft:feather{augment:25b} 1
execute if score @s uhcp_a_count matches 1.. run return 25

execute store success score @s uhcp_a_count run clear @s minecraft:diamond_block{augment:26b} 1
execute if score @s uhcp_a_count matches 1.. run return 26

execute store success score @s uhcp_a_count run clear @s minecraft:light_gray_dye{augment:27b} 1
execute if score @s uhcp_a_count matches 1.. run return 27

execute store success score @s uhcp_a_count run clear @s minecraft:chest{augment:29b} 1
execute if score @s uhcp_a_count matches 1.. run return 29

execute store success score @s uhcp_a_count run clear @s minecraft:iron_trapdoor{augment:32b} 1
execute if score @s uhcp_a_count matches 1.. run return 32

execute store success score @s uhcp_a_count run clear @s minecraft:totem_of_undying{augment:33b} 1
execute if score @s uhcp_a_count matches 1.. run return 33

execute store success score @s uhcp_a_count run clear @s minecraft:glass_bottle{augment:34b} 1
execute if score @s uhcp_a_count matches 1.. run return 34

execute store success score @s uhcp_a_count run clear @s minecraft:copper_ingot{augment:35b} 1
execute if score @s uhcp_a_count matches 1.. run return 35

execute store success score @s uhcp_a_count run clear @s minecraft:barrel{augment:37b} 1
execute if score @s uhcp_a_count matches 1.. run return 37

execute store success score @s uhcp_a_count run clear @s minecraft:tnt{augment:38b} 1
execute if score @s uhcp_a_count matches 1.. run return 38

execute store success score @s uhcp_a_count run clear @s minecraft:trident{augment:39s} 1
execute if score @s uhcp_a_count matches 1.. run return 39

execute store success score @s uhcp_a_count run clear @s minecraft:blade_pottery_sherd{augment:40b} 1
execute if score @s uhcp_a_count matches 1.. run return 40

execute store success score @s uhcp_a_count run clear @s minecraft:golden_hoe{augment:41b} 1
execute if score @s uhcp_a_count matches 1.. run return 41

execute store success score @s uhcp_a_count run clear @s minecraft:brush{augment:42b} 1
execute if score @s uhcp_a_count matches 1.. run return 42

# Silver Augments
execute store success score @s uhcp_a_count run clear @s minecraft:slime_ball{augment:100s} 1
execute if score @s uhcp_a_count matches 1.. run return 100

execute store success score @s uhcp_a_count run clear @s minecraft:clock{augment:101s} 1
execute if score @s uhcp_a_count matches 1.. run return 101

execute store success score @s uhcp_a_count run clear @s minecraft:damaged_anvil{augment:102s} 1
execute if score @s uhcp_a_count matches 1.. run return 102

execute store success score @s uhcp_a_count run clear @s minecraft:bucket{augment:103s} 1
execute if score @s uhcp_a_count matches 1.. run return 103

execute store success score @s uhcp_a_count run clear @s minecraft:book{augment:104s} 1
execute if score @s uhcp_a_count matches 1.. run return 104

execute store success score @s uhcp_a_count run clear @s minecraft:creeper_head{augment:105s} 1
execute if score @s uhcp_a_count matches 1.. run return 105

execute store success score @s uhcp_a_count run clear @s minecraft:crossbow{augment:106s} 1
execute if score @s uhcp_a_count matches 1.. run return 106

execute store success score @s uhcp_a_count run clear @s minecraft:gold_nugget{augment:107s} 1
execute if score @s uhcp_a_count matches 1.. run return 107

execute store success score @s uhcp_a_count run clear @s minecraft:potion{augment:108s} 1
execute if score @s uhcp_a_count matches 1.. run return 108

execute store success score @s uhcp_a_count run clear @s minecraft:glass_bottle{augment:109s} 1
execute if score @s uhcp_a_count matches 1.. run return 109

execute store success score @s uhcp_a_count run clear @s minecraft:enchanted_book{augment:110s} 1
execute if score @s uhcp_a_count matches 1.. run return 110

execute store success score @s uhcp_a_count run clear @s minecraft:golden_apple{augment:111s} 1
execute if score @s uhcp_a_count matches 1.. run return 111

execute store success score @s uhcp_a_count run clear @s minecraft:rabbit_stew{augment:113s} 1
execute if score @s uhcp_a_count matches 1.. run return 113

execute store success score @s uhcp_a_count run clear @s minecraft:iron_pickaxe{augment:114s} 1
execute if score @s uhcp_a_count matches 1.. run return 114

execute store success score @s uhcp_a_count run clear @s minecraft:iron_bars{augment:115s} 1
execute if score @s uhcp_a_count matches 1.. run return 115

execute store success score @s uhcp_a_count run clear @s minecraft:ladder{augment:116s} 1
execute if score @s uhcp_a_count matches 1.. run return 116

execute store success score @s uhcp_a_count run clear @s minecraft:bone{augment:118s} 1
execute if score @s uhcp_a_count matches 1.. run return 118

execute store success score @s uhcp_a_count run clear @s minecraft:zombie_head{augment:119s} 1
execute if score @s uhcp_a_count matches 1.. run return 119

execute store success score @s uhcp_a_count run clear @s minecraft:compass{augment:120s} 1
execute if score @s uhcp_a_count matches 1.. run return 120

execute store success score @s uhcp_a_count run clear @s minecraft:chainmail_chestplate{augment:121s} 1
execute if score @s uhcp_a_count matches 1.. run return 121

execute store success score @s uhcp_a_count run clear @s minecraft:pointed_dripstone{augment:122s} 1
execute if score @s uhcp_a_count matches 1.. run return 122

execute store success score @s uhcp_a_count run clear @s minecraft:leather_horse_armor{augment:123s} 1
execute if score @s uhcp_a_count matches 1.. run return 123

execute store success score @s uhcp_a_count run clear @s minecraft:shield{augment:124s} 1
execute if score @s uhcp_a_count matches 1.. run return 124

execute store success score @s uhcp_a_count run clear @s minecraft:light_gray_dye{augment:125s} 1
execute if score @s uhcp_a_count matches 1.. run return 125

execute store success score @s uhcp_a_count run clear @s minecraft:feather{augment:126s} 1
execute if score @s uhcp_a_count matches 1.. run return 126

execute store success score @s uhcp_a_count run clear @s minecraft:chest{augment:127s} 1
execute if score @s uhcp_a_count matches 1.. run return 127

execute store success score @s uhcp_a_count run clear @s minecraft:cobweb{augment:128s} 1
execute if score @s uhcp_a_count matches 1.. run return 128

execute store success score @s uhcp_a_count run clear @s minecraft:shulker_box{augment:129s} 1
execute if score @s uhcp_a_count matches 1.. run return 129

execute store success score @s uhcp_a_count run clear @s minecraft:diamond{augment:130s} 1
execute if score @s uhcp_a_count matches 1.. run return 130

execute store success score @s uhcp_a_count run clear @s minecraft:turtle_helmet{augment:131s} 1
execute if score @s uhcp_a_count matches 1.. run return 131

execute store success score @s uhcp_a_count run clear @s minecraft:bow{augment:132s} 1
execute if score @s uhcp_a_count matches 1.. run return 132

execute store success score @s uhcp_a_count run clear @s minecraft:oak_trapdoor{augment:133s} 1
execute if score @s uhcp_a_count matches 1.. run return 133

execute store success score @s uhcp_a_count run clear @s minecraft:white_banner{augment:134s} 1
execute if score @s uhcp_a_count matches 1.. run return 134

execute store success score @s uhcp_a_count run clear @s minecraft:spyglass{augment:135s} 1
execute if score @s uhcp_a_count matches 1.. run return 135

execute store success score @s uhcp_a_count run clear @s minecraft:cooked_cod{augment:136s} 1
execute if score @s uhcp_a_count matches 1.. run return 136

# Prismatic Augments
execute store success score @s uhcp_a_count run clear @s minecraft:bow{augment:201s} 1
execute if score @s uhcp_a_count matches 1.. run return 201

execute store success score @s uhcp_a_count run clear @s minecraft:blaze_powder{augment:203s} 1
execute if score @s uhcp_a_count matches 1.. run return 203

execute store success score @s uhcp_a_count run clear @s minecraft:enchanted_golden_apple{augment:206s} 1
execute if score @s uhcp_a_count matches 1.. run return 206

execute store success score @s uhcp_a_count run clear @s minecraft:diamond_boots{augment:207s} 1
execute if score @s uhcp_a_count matches 1.. run return 207

execute store success score @s uhcp_a_count run clear @s minecraft:diamond_pickaxe{augment:211s} 1
execute if score @s uhcp_a_count matches 1.. run return 211

execute store success score @s uhcp_a_count run clear @s minecraft:totem_of_undying{augment:212s} 1
execute if score @s uhcp_a_count matches 1.. run return 212

execute store success score @s uhcp_a_count run clear @s minecraft:bookshelf{augment:213s} 1
execute if score @s uhcp_a_count matches 1.. run return 213

execute store success score @s uhcp_a_count run clear @s minecraft:netherrack{augment:214s} 1
execute if score @s uhcp_a_count matches 1.. run return 214

execute store success score @s uhcp_a_count run clear @s minecraft:brewing_stand{augment:216s} 1
execute if score @s uhcp_a_count matches 1.. run return 216

execute store success score @s uhcp_a_count run clear @s minecraft:target{augment:217s} 1
execute if score @s uhcp_a_count matches 1.. run return 217

execute store success score @s uhcp_a_count run clear @s minecraft:shield{augment:220s} 1
execute if score @s uhcp_a_count matches 1.. run return 220

execute store success score @s uhcp_a_count run clear @s minecraft:wooden_sword{augment:222s} 1
execute if score @s uhcp_a_count matches 1.. run return 222

execute store success score @s uhcp_a_count run clear @s minecraft:chest{augment:224s} 1
execute if score @s uhcp_a_count matches 1.. run return 224

execute store success score @s uhcp_a_count run clear @s minecraft:rabbit_foot{augment:226s} 1
execute if score @s uhcp_a_count matches 1.. run return 226

execute store success score @s uhcp_a_count run clear @s minecraft:elytra{augment:227s} 1
execute if score @s uhcp_a_count matches 1.. run return 227

execute store success score @s uhcp_a_count run clear @s minecraft:iron_trapdoor{augment:228s} 1
execute if score @s uhcp_a_count matches 1.. run return 228

execute store success score @s uhcp_a_count run clear @s minecraft:fishing_rod{augment:229s} 1
execute if score @s uhcp_a_count matches 1.. run return 229

execute store success score @s uhcp_a_count run clear @s minecraft:turtle_helmet{augment:236s} 1
execute if score @s uhcp_a_count matches 1.. run return 236
