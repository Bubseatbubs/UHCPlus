# Notify player of first failure to find owned cats
tellraw @s {"text":"No tamed cats were found.","color":"dark_red"}
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
scoreboard players set @s uhcp_aug_count -1
