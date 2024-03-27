#>  uhcp:augments/init
#   Initial augment selection function
#   Generates options for player to choose from
#
# @within  uhcp:start/augments

# Initialize player tags + scores + options
tag @s remove UHCP_ChoosingItem
clear @s
scoreboard players set @s uhcp_aug_choosingAugment 0
scoreboard players reset @s uhcp_augment
function uhcp:augments/generate/panes
function uhcp:augments/generate/patron
function uhcp:augments/generate/choices

# Extra fluff
execute if score %tier uhcp_aug_tier matches 0 run title @s subtitle [{"text":"Augment Tier:","color":"#CCFCFF"},{"text":" Silver","color":"#B0B1D6","bold":true}]
execute if score %tier uhcp_aug_tier matches 1 run title @s subtitle [{"text":"Augment Tier:","color":"#CCFCFF"},{"text":" Gold","color":"gold","bold":true}]
execute if score %tier uhcp_aug_tier matches 2 run title @s subtitle [{"text":"Augment Tier:","color":"#CCFCFF"},{"text":" Pr","color":"#22CAD6","bold":true},{"text":"is","color":"#59FFE9"},{"text":"ma","color":"#99FAED"},{"text":"tic","color":"#D4FAEB"}]
title @s title [{"text":"Aug","color":"#1921FF","bold":true},{"text":"men","color":"#3D8BFF"},{"text":"t Se","color":"#59B7FF"},{"text":"lec","color":"#85EFFF"},{"text":"tion","color":"#B8FFF1"}]
tellraw @s [{"text":"[","color":"white"},{"text":"Aug","color":"#1921FF"},{"text":"men","color":"#3D8BFF"},{"text":"t Se","color":"#59B7FF"},{"text":"lec","color":"#85EFFF"},{"text":"tion","color":"#B8FFF1"},{"text":"]\n","color":"white"},{"text":"Choose one of three augments from your inventory.\nTo choose an augment, open your inventory and\nclick on the augment you want.","color":"gray"}]
execute at @s run playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
execute at @s run playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
execute at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2 1
execute at @s run particle minecraft:trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0.001 100 normal

# Final Cleanup
tag @s add UHCP_ChoosingItem
