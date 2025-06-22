# No absorption hearts
function uhcp:augments/effects/gold/redstoneritual/failure

# Return redstone blocks
execute store result storage uhcp:augments RedRitual.redstone int 1 run scoreboard players get @s uhcp_initStatus
function uhcp:augments/effects/gold/redstoneritual/blocks/return with storage uhcp:augments RedRitual
scoreboard players reset @s uhcp_leave
