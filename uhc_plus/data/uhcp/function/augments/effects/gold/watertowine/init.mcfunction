execute store result score @s uhcp_initStatus run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}]

execute at @s[scores={uhcp_initStatus=1..}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
execute at @s[scores={uhcp_initStatus=..0}] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

execute at @s[scores={uhcp_initStatus=1..}] run function uhcp:augments/effects/gold/watertowine/convert

scoreboard players set @s uhcp_game_time -1
