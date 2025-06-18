# No absorption hearts
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

# Return redstone
scoreboard players operation @s uhcp_initStatus -= @s uhcp_lava_timeInterval
execute if score @s uhcp_initStatus matches 0 run return run scoreboard players reset @s uhcp_leave
execute store result storage uhcp:augments RedRitual.redstone int 1 run scoreboard players get @s uhcp_initStatus
function uhcp:augments/effects/gold/redstoneritual/return with storage uhcp:augments RedRitual
scoreboard players reset @s uhcp_leave
