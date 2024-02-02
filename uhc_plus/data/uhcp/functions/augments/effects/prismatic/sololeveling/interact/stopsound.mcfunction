# Stop Nether portal sound
stopsound @s ambient minecraft:block.portal.trigger
execute at @s run stopsound @a[distance=..20] block minecraft:block.glass.break
scoreboard players remove @s uhcp_lavaTimeInterval 1
