# Clear extra redstone
execute store result storage uhcp:augments RedRitual.redstone int -1 run scoreboard players get @s uhcp_initStatus
function uhcp:augments/effects/gold/redstoneritual/absorption/remove with storage uhcp:augments RedRitual

# End
function uhcp:augments/effects/gold/redstoneritual/end
