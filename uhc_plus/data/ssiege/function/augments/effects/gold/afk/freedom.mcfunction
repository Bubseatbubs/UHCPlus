execute at @s run kill @n[tag=UHCP_AFKLock,distance=..15]
function uhcp:augments/countdown/interaction_range
give @s minecraft:diamond 24
scoreboard players set @s ssiege_multi 3
loot give @s loot ssiege:multi_soulshard

tellraw @s {"text":"You are no longer AFK","color":"yellow"}
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1