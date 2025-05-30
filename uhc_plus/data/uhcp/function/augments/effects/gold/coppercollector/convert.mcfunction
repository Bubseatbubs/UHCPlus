# Convert copper to gold (8:1 rate)
scoreboard players set @s uhcp_leave 1000

execute if predicate uhcp:augments/copper_collector/copper run function uhcp:augments/effects/gold/coppercollector/copper
execute if predicate uhcp:augments/copper_collector/raw_copper run function uhcp:augments/effects/gold/coppercollector/raw_copper

scoreboard players reset @s uhcp_leave
scoreboard players set @s uhcp_game_time -1
execute at @s[tag=!UHCP_CopperC] run return run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
tag @s remove UHCP_CopperC
