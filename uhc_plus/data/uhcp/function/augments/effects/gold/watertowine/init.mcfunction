scoreboard players set @s uhcp_game_time -1
scoreboard players set @s uhcp_leave 1000
execute store result score @s uhcp_initStatus run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}]

execute at @s[scores={uhcp_initStatus=1..}] run return run function uhcp:augments/effects/gold/watertowine/success
tellraw @s {"text":"The miracle could not be performed without water.","color":"dark_red"}
execute at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
scoreboard players reset @s uhcp_leave
