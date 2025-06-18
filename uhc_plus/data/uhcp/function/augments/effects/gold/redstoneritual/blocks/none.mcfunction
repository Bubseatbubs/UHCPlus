# No absorption hearts
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

# Return redstone blocks
execute store result storage uhcp:augments RedRitual.redstone int 1 run scoreboard players get @s uhcp_initStatus
function uhcp:augments/effects/gold/redstoneritual/blocks/return with storage uhcp:augments RedRitual
scoreboard players reset @s uhcp_leave
