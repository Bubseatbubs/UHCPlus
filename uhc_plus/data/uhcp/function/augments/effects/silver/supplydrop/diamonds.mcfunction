# Give diamonds
scoreboard players set @s uhcp_leave 1000
give @s minecraft:diamond 32

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players reset @s uhcp_leave
scoreboard players set @s uhcp_game_time -1
