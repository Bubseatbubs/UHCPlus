# Player only has redstone blocks
execute if score @s uhcp_initStatus matches ..7 run return run function uhcp:augments/effects/gold/redstoneritual/blocks/none
scoreboard players operation @s uhcp_initStatus *= #9 uhcp_const

# Calculate absorption hearts and leftover redstone
execute store result storage uhcp:augments RedRitual.absorption int 0.015625 run scoreboard players get @s uhcp_initStatus
execute store result storage uhcp:augments RedRitual.absorption int 2 run data get storage uhcp:augments RedRitual.absorption
scoreboard players operation @s uhcp_initStatus %= #64 uhcp_const

execute if score @s uhcp_initStatus matches ..-1 run return run function uhcp:augments/effects/gold/redstoneritual/extra
execute if score @s uhcp_initStatus matches 1.. run return run function uhcp:augments/effects/gold/redstoneritual/fewer

# Max absorption
function uhcp:augments/effects/gold/redstoneritual/absorption/maintain with storage uhcp:augments RedRitual

# End
function uhcp:augments/effects/gold/redstoneritual/end
