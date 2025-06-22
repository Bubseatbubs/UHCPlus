# Unlock player
execute at @s run kill @n[tag=UHCP_AFKLock,distance=..15]
function uhcp:augments/countdown/interaction_range

# Give gold
scoreboard players set @s uhcp_leave 1000
give @s minecraft:gold_ingot 24
scoreboard players reset @s uhcp_leave

tellraw @s {"text":"You have been freed!","color":"yellow"}
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
