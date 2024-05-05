execute at @s run kill @e[tag=UHCP_Lock,sort=nearest,limit=1,distance=..15]
effect clear @s
give @s gold_ingot 24

scoreboard players set @s uhcp_game_time -1
