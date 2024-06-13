execute at @s run kill @e[tag=UHCP_Lock,distance=..15,sort=nearest,limit=1]
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:weakness
give @s minecraft:gold_ingot 24

tellraw @s {"text":"You have been freed!","color":"yellow"}
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
