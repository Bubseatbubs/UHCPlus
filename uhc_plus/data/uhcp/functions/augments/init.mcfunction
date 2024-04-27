#>  uhcp:augments/init
#   Initial augment selection function
#   Generates options for player to choose from
#
# @within  uhcp:start/augments

# Initialize player tags + scores + options
tag @s remove UHCP_ChoosingItem
tag @s remove UHCP_AugmentRerollSlot1
tag @s remove UHCP_AugmentRerollSlot2
tag @s remove UHCP_AugmentRerollSlot3
clear @s
scoreboard players set @s uhcp_aug_choosingAugment 0
scoreboard players reset @s uhcp_augment
execute if score %patrons uhcp_settings matches 1 run function uhcp:augments/generate/patron
function uhcp:augments/generate/choices
function uhcp:augments/generate/panes

# Extra fluff
execute at @s run playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
execute at @s run playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
execute at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2 1
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0.001 100 normal

# Final Cleanup
tag @s add UHCP_ChoosingItem
