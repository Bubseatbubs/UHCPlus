# Roll prismatic augments
execute if score %current_mode mode matches 0 run execute in uhcp:main positioned 0 -65 0 summon minecraft:chest_minecart run function uhcp:augments/roll/prismatic/store
execute if score %current_mode mode matches 1 run execute in uhcp:main positioned 0 -65 0 summon minecraft:chest_minecart run function ssiege:augments/roll/prismatic/store

# End
tag @s remove UHCP_GeneratingAugments
