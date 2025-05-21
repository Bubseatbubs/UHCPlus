playsound minecraft:block.glass.break master @a[distance=..6] ~ ~ ~ 1 0.8 0.75
playsound minecraft:block.glass.break master @a[distance=..9] ~ ~ ~ 1 0.8 0.75
playsound minecraft:block.glass.break master @a[distance=..12] ~ ~ ~ 1 0.8 0.75
particle minecraft:reverse_portal ~ ~ ~ 1 2 1 0.1 100 normal
particle minecraft:block{block_state:"minecraft:nether_portal"} ~ ~ ~ 2 2 2 0.1 300 normal
execute as @a[distance=..3,gamemode=survival] run damage @s 6 minecraft:falling_block
scoreboard players set %containers uhcp_settings 0
fill ~-3 ~-2 ~-4 ~3 ~ ~4 minecraft:netherrack replace #uhcp:containers destroy
fill ~-4 ~-2 ~-3 ~4 ~ ~3 minecraft:netherrack replace #uhcp:containers destroy
fill ~-3 ~-2 ~-4 ~3 ~ ~4 minecraft:netherrack replace #uhcp:no_fluids_breakable
fill ~-4 ~-2 ~-3 ~4 ~ ~3 minecraft:netherrack replace #uhcp:no_fluids_breakable
scoreboard players set %containers uhcp_settings 1

function uhcp:titans/gallie/nether_portal/summon

execute on passengers run kill @s
kill @s
