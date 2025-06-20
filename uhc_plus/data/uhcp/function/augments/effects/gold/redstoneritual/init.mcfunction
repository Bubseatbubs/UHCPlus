# Check for redstone
scoreboard players set @s uhcp_game_time -1
execute unless predicate uhcp:augments/redstone_ritual run return run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
scoreboard players set @s uhcp_leave 1000

# Count redstone
execute store result score @s uhcp_lava_timeInterval run clear @s minecraft:redstone 0
execute store result score @s uhcp_initStatus run clear @s minecraft:redstone_block
execute if score @s uhcp_lava_timeInterval matches 0 run return run function uhcp:augments/effects/gold/redstoneritual/blocks
scoreboard players operation @s uhcp_initStatus *= #9 uhcp_const

# Calculate absorption hearts and leftover redstone
scoreboard players operation @s uhcp_initStatus += @s uhcp_lava_timeInterval
execute if score @s uhcp_initStatus matches ..63 run return run function uhcp:augments/effects/gold/redstoneritual/none

execute store result storage uhcp:augments RedRitual.absorption int 0.015625 run scoreboard players get @s uhcp_initStatus
execute store result storage uhcp:augments RedRitual.absorption int 2 run data get storage uhcp:augments RedRitual.absorption
scoreboard players operation @s uhcp_initStatus %= #64 uhcp_const
scoreboard players operation @s uhcp_initStatus -= @s uhcp_lava_timeInterval

execute if score @s uhcp_initStatus matches ..-1 run return run function uhcp:augments/effects/gold/redstoneritual/extra
execute if score @s uhcp_initStatus matches 1.. run return run function uhcp:augments/effects/gold/redstoneritual/fewer

# Max absorption
function uhcp:augments/effects/gold/redstoneritual/absorption/maintain with storage uhcp:augments RedRitual

# End
function uhcp:augments/effects/gold/redstoneritual/end
