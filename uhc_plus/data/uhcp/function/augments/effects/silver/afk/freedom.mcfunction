execute at @s run kill @n[tag=UHCP_AFKLock,distance=..15]
function uhcp:augments/countdown/interaction_range
give @s minecraft:gold_ingot 24

tellraw @s {"text":"You have been freed!","color":"yellow"}
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
